
from enum import Enum
import struct

class MessageType(Enum):
    TimeStamp           =  'T'
    AddOrder            =  'A'
    AddOrderMPID        =  'F'
    OrderExecuted       =  'E'
    OrderExecutedPrice  =  'C'
    OrderCancel         =  'X'
    OrderDelete         =  'D'
    OrderReplace        =  'U'

class Field(object):
    MessageType     =  "MessageType"
    Seconds         =  "Seconds"
    NanoSeconds     =  "NanoSeconds"
    OrderRefNum     =  "OrderRefNum"
    NewOrderRefNum  =  "NewOrderRefNum"
    Side            =  "Side"
    Shares          =  "Shares"
    Stock           =  "Stock"
    Price           =  "Price"
    Printable       =  "Printable"
    Mpid            =  "Mpid"
    MatchNum        =  "MatchNum"

class ItchMessageFactory:
    @staticmethod
    def createFromArgs( messageArgs ):
        messageType = messageArgs[0]
        message = None
        if messageType == MessageType.TimeStamp:
            message = TimeStamp()
        elif messageType == MessageType.AddOrder:
            message = AddOrder()
        elif messageType == MessageType.AddOrderMPID:
            message = AddOrderWithMPID()
        elif messageType == MessageType.OrderExecuted:
            message = OrderExecuted()
        elif messageType == MessageType.OrderExecutedPrice:
            message = OrderExecutedWithPrice()
        elif messageType == MessageType.OrderCancel:
            message = OrderCancel()
        elif messageType == MessageType.OrderDelete:
            message = OrderDelete()
        elif messageType == MessageType.OrderReplace:
            message = OrderReplace()
        message.fromArgs(messageArgs)
        return message

class ItchMessage:
    def __init__(self):
        self.specs = [ ]
        self.specs.append( [ 0, 1, str, Field.MessageType ] )

    def fromArgs(self, args):
        self.messageLength = self.specs[len(self.specs)-1][0] + self.specs[len(self.specs)-1][1]

        endianStyle = 'big'

        self.rawMessage = bytearray()
        self.rawMessage.extend( self.messageLength.to_bytes(2, byteorder=endianStyle))
        self.rawMessage.extend( self.messageType.encode() )
        counter = 0
        for spec in self.specs[1:]:
            val = args[1][ spec[3] ]
            if spec[2] is int:
                if spec[1] == 4:
                    if type( val ) is float:
                        val *= 10000
                        val = int( val )
                    byteVer = ( val ).to_bytes(4, byteorder=endianStyle)
                elif spec[1] == 8:
                    byteVer = ( val ).to_bytes(8, byteorder=endianStyle)
                self.rawMessage.extend( byteVer )
            elif spec[2] is str:
                if type( val ) is MessageType:
                    byteVer = str( val.value ).encode()
                else:
                    strValue = val
                    if spec[3] == Field.Stock:
                        strValue = val + (8 - len( val ) ) * ' '
                    elif spec[3] == Field.Mpid:
                        strValue = val + (4 - len( val ) ) * ' '
                    byteVer = str( strValue ).encode()
                self.rawMessage.extend( byteVer )
            counter += 1

    def dumpRawBytes(self):
        print("--- Dumping raw message bytes ---")
        print("--  Length of payload: {0}".format(len(self.rawMessage)))
        lineLen = 8
        conv = [ "{0:#0{1}x}".format(x, 4) for x in self.rawMessage ]
        line = "\n\t- ".join( [ " ".join( conv[i:i+lineLen] ) for i in range(0, len(conv), lineLen) ] )
        print("\t- {0}".format(line))

    def fromBytes(self, rawBytesWithLen):
        self.rawMessage = rawBytesWithLen

    def dumpPretty(self):
        print("--- Pretty Dump")
        messageLength = struct.unpack("!h", self.rawMessage[0:2])[0]
        print("--- Length of message: {}".format(messageLength))
        for spec in self.specs:
            rawBytes = self.rawMessage[ 2 + spec[0] : 2 + spec[0] + spec[1] ]

            if spec[2] is int:
                if spec[1] == 2:
                    dispVal = struct.unpack("!h", rawBytes)[0]
                elif spec[1] == 4:
                    dispVal = struct.unpack("!i", rawBytes)[0]
                    if spec[3] == Field.Price:
                        dispVal /= 10000
                elif spec[1] == 8:
                    dispVal = struct.unpack("!q", rawBytes)[0]
            elif spec[2] is str:
                dispVal = rawBytes.decode()
                #print("dispVal: {}".format( dispVal ) )
                if spec[3] == Field.MessageType:
                    dispVal = MessageType(dispVal)
            convRawBytes = [ "{0:#0{1}x}".format(x, 4) for x in rawBytes ]
            convRawBytes = "".join( [ " ".join( convRawBytes[i:i+8] ) for i in range(0, len(convRawBytes), 8) ] )
            print("\t {:<15} : {:<20} [{}]".format(spec[3], dispVal, convRawBytes))

    def appendToFile(self, fileName=None):
        self.saveToFile('ab', fileName)

    def saveToFile(self, openMode='ab', fileName=None):
        if fileName is None:
            fileName = self.type + ".itch"
            print("Setting file name to: {0}".format(fileName))
        print("Saving to file: {0}".format(fileName))
        dataLen = len(self.rawMessage[2:])
        rawArray = bytearray(self.rawMessage[2:])
        print("Data length: {0}".format(dataLen))

        fileOut = open(fileName, openMode)
        fileOut.write(struct.pack(">H", dataLen))
        fileOut.write(rawArray)
        fileOut.close()

    def getValue(self, fieldName):
        for spec in self.specs:
            if spec[3] == fieldName:
                start = spec[0] + 2
                len = spec[1]
                if spec[2] is int:
                    #print("INT")
                    if len == 2:
                        val = struct.unpack("!h", self.rawMessage[start:start+len])[0]
                    elif len == 4:
                        val = struct.unpack("!i", self.rawMessage[start:start+len])[0]
                    elif len == 8:
                        val = struct.unpack("!q", self.rawMessage[start:start+len])[0]
                    if spec[3] == Field.Price:
                        val /= 10000
                elif spec[2] is str:
                    if len == 1:
                        val = struct.unpack("!c", self.rawMessage[start:start+len])[0].decode()
                    else:
                        val = self.rawMessage[start:start+len].decode().strip()
                return val
        return ""

class TimeStamp(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.TimeStamp.value
        self.specs.append( [ 1, 4, int, Field.Seconds ] )

class AddOrder(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.AddOrder.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )
        self.specs.append( [  13, 1, str, Field.Side ] )
        self.specs.append( [  14, 4, int, Field.Shares ] )
        self.specs.append( [  18, 8, str, Field.Stock ] )
        self.specs.append( [  26, 4, int, Field.Price ] )

class AddOrderWithMPID(AddOrder):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.AddOrderMPID.value
        self.specs.append( [  30, 4, str, Field.Mpid ] )

class OrderExecuted(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.OrderExecuted.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )
        self.specs.append( [  13, 4, int, Field.Shares ] )
        self.specs.append( [  17, 8, int, Field.MatchNum ] )

class OrderExecutedWithPrice(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.OrderExecutedPrice.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )
        self.specs.append( [  13, 4, int, Field.Shares ] )
        self.specs.append( [  17, 8, int, Field.MatchNum ] )
        self.specs.append( [  25, 1, str, Field.Printable ] )
        self.specs.append( [  26, 4, int, Field.Price ] )

class OrderCancel(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.OrderCancel.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )
        self.specs.append( [  13, 4, int, Field.Shares ] )

class OrderDelete(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.OrderDelete.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )

class OrderReplace(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = MessageType.OrderReplace.value
        self.specs.append( [   1, 4, int, Field.NanoSeconds ] )
        self.specs.append( [   5, 8, int, Field.OrderRefNum ] )
        self.specs.append( [  13, 8, int, Field.NewOrderRefNum ] )
        self.specs.append( [  21, 4, int, Field.Shares ] )
        self.specs.append( [  25, 4, int, Field.Price ] )

