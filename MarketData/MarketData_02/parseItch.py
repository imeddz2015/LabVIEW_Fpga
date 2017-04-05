#!/usr/local/bin/python3

import struct
from Itch41 import *

#### Parameters for Execution
# Download from here: ftp://emi.nasdaq.com/ITCH/11092013.NASDAQ_ITCH41.gz
fileName = "/Users/john/Downloads/11092013.NASDAQ_ITCH41"
outputFile = "Itch.dat"
saveMessageTypes = [ 'A' ]
numberOfMessagesToSave = 2

#fileName = "Itch.dat"

def dumpRawBytes(message, rawBytes):
    print("--- {} ---".format(message) )
    print("--  Length of payload: {0}".format(len(rawBytes)))
    lineLen = 8
    conv = [ "{0:#0{1}x}".format(x, 4) for x in rawBytes]
    line = "\n\t- ".join( [ " ".join( conv[i:i+lineLen] ) for i in range(0, len(conv), lineLen) ] )
    print("\t- {0}".format(line))

global counter
counter = 0
global orderBook
orderBook = { }
def OrderBook(itchMessage):
    global counter
    global orderBook
    counter += 1

    ticker = "AAPL"

    messageType = MessageType( itchMessage.getValue( Field.MessageType ))
    if messageType == MessageType.AddOrder or messageType == MessageType.AddOrderWithMPID:
        if itchMessage.getValue( Field.Stock ) == ticker:
            orderRefNum = itchMessage.getValue(Field.OrderRefNum)
            if orderRefNum in orderBook:
                print("Already exists")
            orderBook[orderRefNum] = itchMessage
    if counter == 1500000:
        print("Number of messages in orderbook: {}".format( len(orderBook.keys() )))
        for orderRefNum in orderBook.keys():
            #orderRefNum = order.getValue(Field.OrderRefNum)
            order = orderBook[orderRefNum]
            price = order.getValue(Field.Price)
            shares = order.getValue(Field.Shares)
            #print("OrderRefNum: {}, Price: {}, Shares: {}".format( orderRefNum, price, shares))
        return True
    return False

fptr = OrderBook
cacheSize = 1024
fin = open(fileName, "rb")


buffer = fin.read(cacheSize)
bufferLen = len(buffer)
ptr = 0
haveData = True
while haveData:
    byte = buffer[ptr:ptr+1]
    ptr += 1
    if ptr == bufferLen:
        ptr = 0
        buffer = fin.read(cacheSize)
    bufferLen = len(buffer)
    if len(byte) == 0:
        print("BREAK-len(byte) == 0")
        break
    if byte == b'\x00':
        length = ord(buffer[ptr:ptr+1])
        ptr += 1
        if (ptr+length) > bufferLen:
            temp = buffer[ptr:bufferLen]
            buffer = temp + fin.read(cacheSize)
            bufferLen = len(buffer)
            ptr = 0
        message = buffer[ptr:ptr+length]
        ptr += length

        import struct
        preamble = struct.pack("!h", length)
        rawMessage = preamble + message

        itchMessage = ItchMessageFactory.createFromBytes(rawMessage)
        if fptr(itchMessage):
            break

        if ptr == bufferLen:
            ptr = 0
            buffer = fin.read(cacheSize)
            bufferLen = len(buffer)
fin.close()

