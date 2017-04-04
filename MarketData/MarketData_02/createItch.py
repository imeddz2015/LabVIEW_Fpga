#!/usr/bin/env python3

from Itch41 import *

# Begin code for generating a bunch of messages
messages = [ ]
messages.append( [          MessageType.TimeStamp, {     Field.Seconds: 100 } ] )
messages.append( [           MessageType.AddOrder, { Field.NanoSeconds:   10, Field.OrderRefNum: 1, Field.Side: 'B', Field.Shares: 200, Field.Stock: "AAPL", Field.Price: 100.53 } ] )
messages.append( [           MessageType.AddOrder, { Field.NanoSeconds:   20, Field.OrderRefNum: 2, Field.Side: 'B', Field.Shares: 300, Field.Stock: "AAPL", Field.Price: 100.55 } ] )
messages.append( [           MessageType.AddOrder, { Field.NanoSeconds:   30, Field.OrderRefNum: 3, Field.Side: 'B', Field.Shares: 400, Field.Stock: "AAPL", Field.Price: 100.56 } ] )
messages.append( [      MessageType.OrderExecuted, { Field.NanoSeconds:   40, Field.OrderRefNum: 2, Field.Shares: 300, Field.MatchNum: 1001 } ] )
#messages.append( [ MessageType.OrderExecutedPrice, { Field.NanoSeconds:   1, Field.OrderRefNum: 1, Field.Shares: 200, Field.MatchNum: 101, Field.Printable: 'Y', Field.Price: 100.52 } ] )
#messages.append( [        MessageType.OrderCancel, { Field.NanoSeconds:   1, Field.OrderRefNum: 1, Field.Shares: 200 } ] )
#messages.append( [        MessageType.OrderDelete, { Field.NanoSeconds:   1, Field.OrderRefNum: 1} ] )
#messages.append( [       MessageType.OrderReplace, { Field.NanoSeconds:   1, Field.OrderRefNum: 1, Field.NewOrderRefNum: 9, Field.Shares: 200, Field.Price: 100.52 } ] )

genMessages = [ ]
for message in messages:
    msg = ItchMessageFactory.createFromArgs(message)
    if msg:
        genMessages.append(msg)

outFile = "Itch.dat"
print("-- # of generated messages: {0} --".format(len(genMessages)))
i = 0
for message in genMessages:
    print("-- Dumping message #{0} --".format(i))
    message.dumpPretty()
    message.appendToFile(outFile)
    #message.dumpRawBytes()
    i += 1

