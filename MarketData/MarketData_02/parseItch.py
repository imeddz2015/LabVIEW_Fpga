#!/usr/local/bin/python3

import struct

#def extractMessages(fileName, numberOfMessagesToSave, saveMessageTypes, outFileName): #    messageCounts = { }
#    for saveMessageType in saveMessageTypes:
#        messageCounts[saveMessageType] = 0
#
#    print("Parsing ITCH 4.1 File:", fileName)
#    print("Saving the first {0} messages of type: {1}".format(numberOfMessagesToSave, saveMessageType))
#
#    cacheSize = 1024
#    fin = open(fileName, "rb")
#    messageCounter = 0
#
#    buffer = fin.read(cacheSize)
#    bufferLen = len(buffer)
#    ptr = 0
#    haveData = True
#    while haveData:
#        byte = buffer[ptr:ptr+1]
#        ptr += 1
#        if ptr == bufferLen:
#            ptr = 0
#            buffer = fin.read(cacheSize)
#        bufferLen = len(buffer)
#        if len(byte) == 0:
#            break
#        if byte == b'\x00':
#            length = ord(buffer[ptr:ptr+1])
#            ptr += 1
#            if (ptr+length) > bufferLen:
#                temp = buffer[ptr:bufferLen]
#                buffer = temp + fin.read(cacheSize)
#                bufferLen = len(buffer)
#                ptr = 0
#            message = buffer[ptr:ptr+length]
#            messageType = chr(buffer[ptr])#
#            ptr += length
#            itchMessage = ItchMessage(message)
#
#            if itchMessage.getMessageType() in saveMessageTypes:
#                messageCounts[itchMessage.getMessageType()] += 1
#
#                itchMessage.dumpMessage()
#                itchMessage.dumpRaw()
#                itchMessage.appendToFile(outFileName)
#
#                exitLoop = True
#                for saveMessageType in messageCounts.keys():
#                    if messageCounts[saveMessageType] < numberOfMessagesToSave:
#                        exitLoop = False
#                        break
#                if exitLoop:
#                    break
#            if ptr == bufferLen:
#                ptr = 0
#                buffer = fin.read(cacheSize)
#                bufferLen = len(buffer)
#    fin.close()

from Itch41 import *

#### Parameters for Execution
# Download from here: ftp://emi.nasdaq.com/ITCH/11092013.NASDAQ_ITCH41.gz
fileName = "11092013.NASDAQ_ITCH41"
outputFile = "Itch.dat"
saveMessageTypes = [ 'A' ]
numberOfMessagesToSave = 2

#fileName = "Itch.dat"


cacheSize = 1024
fin = open(fileName, "rb")

counter = 0
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
        break
    if byte == b'\x00':
        length = ord(buffer[ptr:ptr+1])
        ptr += 1
    if (ptr+length) > bufferLen:
        print("ptr: {}, length: {}, ptr+length: {}".format( ptr, length, (ptr+length)))
        temp = buffer[ptr:bufferLen]
        buffer = byte + temp + fin.read(cacheSize)
        bufferLen = len(buffer)
        ptr = 2
    rawMessage = buffer[ptr-2:ptr+length]
    message = buffer[ptr:ptr+length]
    messageType = chr(buffer[ptr])
    ptr += length
    counter += 1
    itchMessage = ItchMessageFactory.createFromBytes(rawMessage)

    print("[{}:{}] Message type: {}".format( ptr, counter, itchMessage.getValue( Field.MessageType )))
#    itchMessage.dumpRawBytes()
#    itchMessage.dumpPretty()

#    if itchMessage.getMessageType() in saveMessageTypes:
        #messageCounts[itchMessage.getMessageType()] += 1

#        itchMessage.dumpRaw()
#        itchMessage.appendToFile(outFileName)

#        exitLoop = True
#        for saveMessageType in messageCounts.keys():
#            if messageCounts[saveMessageType] < numberOfMessagesToSave:
#                exitLoop = False
#                break
#        if exitLoop:
#            break
    if ptr == bufferLen:
        ptr = 0
        buffer = fin.read(cacheSize)
        bufferLen = len(buffer)
fin.close()


