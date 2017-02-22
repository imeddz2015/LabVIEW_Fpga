#!/usr/local/bin/python3

from enum import Enum
import struct

class MessageType(Enum):
    TimeStamp = 'T'
    AddOrder  = 'A'
    AddOrderMPID  = 'F'
    OrderExecuted = 'E'
    OrderExecutedPrice = 'C'
    OrderCancel = 'X'
    OrderDelete = 'D'
    OrderReplace = 'U'

class ItchMessage:
    def __init__(self):
        self.specs = [ ]
        self.specs.append( [ 0, 1, str, "MessageType" ] )

    def fromArgs(self, args):
        self.messageLength = self.specs[len(self.specs)-1][0] + self.specs[len(self.specs)-1][1]

        endianStyle = 'big'

        self.rawMessage = bytearray()
        self.rawMessage.extend( self.messageLength.to_bytes(2, byteorder=endianStyle))
        counter = 0
        for spec in self.specs:
            if spec[2] is int:
                if spec[1] == 4:
                    if type(args[counter]) is float:
                        args[counter] *= 10000
                        args[counter] = int(args[counter])
                    byteVer = (args[counter]).to_bytes(4, byteorder=endianStyle)
                elif spec[1] == 8:
                    byteVer = (args[counter]).to_bytes(8, byteorder=endianStyle)
                self.rawMessage.extend( byteVer )
            elif spec[2] is str:
                if type(args[counter]) is MessageType:
                    byteVer = str(args[counter].value).encode()
                else:
                    strValue = args[counter]
                    if spec[3] == "Stock":
                        strValue = strValue + (8 - len(strValue) ) * ' '
                    elif spec[3] == "MPID":
                        strValue = strValue + (4 - len(strValue) ) * ' '
                    byteVer = str(strValue).encode()
                self.rawMessage.extend( byteVer )
            counter += 1

    def dumpRawBytes(self):
        print("--- Dumping raw message bytes ---")
        print("--  Length of message: {0}".format(len(self.rawMessage)))
        lineLen = 8
        conv = [ "{0:#0{1}x}".format(x, 4) for x in self.rawMessage ]
        line = "\n\t- ".join( [ " ".join( conv[i:i+lineLen] ) for i in range(0, len(conv), lineLen) ] )
        print("\t- {0}".format(line))

    def fromBytes(self, rawBytesWithLen):
        self.rawMessage = rawBytesWithLen

    def dumpPretty(self):
        print("--- Pretty Dump ---")
        messageLength = struct.unpack("!h", self.rawMessage[0:2])[0]
        print("-- Length of message: {}".format(messageLength))
        for spec in self.specs:
            rawBytes = self.rawMessage[ 2 + spec[0] : 2 + spec[0] + spec[1] ]

            if spec[2] is int:
                if spec[1] == 2:
                    dispVal = struct.unpack("!h", rawBytes)[0]
                elif spec[1] == 4:
                    dispVal = struct.unpack("!i", rawBytes)[0]
                    if spec[3] == "Price":
                        dispVal /= 10000
                elif spec[1] == 8:
                    dispVal = struct.unpack("!q", rawBytes)[0]
            elif spec[2] is str:
                dispVal = rawBytes.decode()
                if spec[3] == "MessageType":
                    dispVal = MessageType(dispVal)
            print("\t- {} : {}".format(spec[3], dispVal))

class TimeStamp(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'T'
        self.specs.append( [ 1, 4, int, "Seconds" ] )

class AddOrder(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'A'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )
        self.specs.append( [  13, 1, str, "Side" ] )
        self.specs.append( [  14, 4, int, "Shares" ] )
        self.specs.append( [  18, 8, str, "Stock" ] )
        self.specs.append( [  26, 4, int, "Price" ] )

class AddOrderWithMPID(AddOrder):
    def __init__(self):
        super().__init__()
        self.messageType = 'F'
        self.specs.append( [  30, 4, str, "MPID" ] )

class OrderExecuted(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'E'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )
        self.specs.append( [  13, 4, int, "Shares" ] )
        self.specs.append( [  17, 8, int, "MatchNum" ] )

class OrderExecutedWithPrice(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'C'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )
        self.specs.append( [  13, 4, int, "Shares" ] )
        self.specs.append( [  17, 8, int, "MatchNum" ] )
        self.specs.append( [  25, 1, str, "Printable" ] )
        self.specs.append( [  26, 4, int, "Price" ] )

class OrderCancel(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'X'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )
        self.specs.append( [  13, 4, int, "Shares" ] )

class OrderDelete(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'D'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )

class OrderReplace(ItchMessage):
    def __init__(self):
        super().__init__()
        self.messageType = 'U'
        self.specs.append( [   1, 4, int, "NanoSeconds" ] )
        self.specs.append( [   5, 8, int, "OrderRefNum" ] )
        self.specs.append( [  13, 8, int, "NewOrderRefNum" ] )
        self.specs.append( [  21, 4, int, "Shares" ] )
        self.specs.append( [  25, 4, int, "Price" ] )

#        Timestamp  -  Seconds=100
#messages.append( [ MessageType.TimeStamp, 100 ] )

#         AddOrder  -  NanoSeconds=1, OrderRefNum=1000, Side='B', Shares=200, Stock='AAPL', Price=100.53
#messages.append( [ MessageType.AddOrder, 1, 1, 'B', 200, "AAPL", 100.53 ] )

# AddOrderWithMPID  -  NanoSeconds=2, OrderRefNum=1001, Side='B', Shares=200, Stock='AAPL', Price=100.53, MPID='MPID'
#messages.append( [ MessageType.AddOrderMPID, 1, 1, 'B', 300, "AAPL", 100.54, "MP" ] )

# OrderExecuted - NanoSeconds=3, OrderRefNum=1000, Shares=200, MatchNum=90001
#messages.append( [ MessageType.OrderedExecuted, 4, 1000, 200, 90001 ] )

# OrderExecutedWithPrice - NanoSeconds=3, OrderRefNum=1001, Shares=300, MatchNum=90002, Price=100.54
#messages.append( [ MessageType.OrderedExecutedWithPrice, 3, 1001, 300, 90002, 100.54 ] )

# OrderCancel - NanoSeconds=4, OrderRefNum=1002, 100

# Begin code for generating a bunch of messages
messages = [ ]
messages.append( [ MessageType.TimeStamp, 100 ] )
messages.append( [ MessageType.AddOrder, 1, 1, 'B', 200, "AAPL", 100.53 ] )
messages.append( [ MessageType.AddOrderMPID, 1, 1, 'B', 200, "AAPL", 100.53, "MP" ] )
#messages.append( [ MessageType.AddOrder, 1, 1, 'B', 200, "AAPL", 100.53 ] )

genMessages = [ ]

for message in messages:
    msg = None
    if message[0] == MessageType.TimeStamp:
        msg = TimeStamp()
    elif message[0] == MessageType.AddOrder:
        msg = AddOrder()
    elif message[0] == MessageType.AddOrderMPID:
        msg = AddOrderWithMPID()
    if msg:
        msg.fromArgs(message)
        genMessages.append(msg)

print("# of generated messages: {0}".format(len(genMessages)))
i = 0
for message in genMessages:
    #print("Dumping message #{0}".format(i))
    message.dumpPretty()
    #message.dumpRawBytes()
    i += 1

