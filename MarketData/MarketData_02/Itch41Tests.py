#!/usr/bin/env python3

import unittest

from Itch41 import *

class Create_Itch41_Messages_Test(unittest.TestCase):
    """ Tests for creating, parsing and dumping Itch 41 messages """

    def test_create_TimeStamp(self):
        # GIVEN
        messageArgs = [ MessageType.TimeStamp, { Field.Seconds: 100 } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual( 'T', message.MessageType )
        self.assertEqual( 100, message.Seconds )

    def test_create_SystemEvent(self):
        # GIVEN
        messageArgs = [ MessageType.SystemEvent, {
                                Field.NanoSeconds    :      105,
                                Field.EventCode      :       'O'
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      'S', message.MessageType )
        self.assertEqual(      105, message.NanoSeconds )
        self.assertEqual(      'O', message.EventCode )

    def test_create_StockDirectory(self):
        # GIVEN
        messageArgs = [ MessageType.StockDirectory, {
                                Field.NanoSeconds      :      105,
                                Field.Stock            :   "AAPL",
                                Field.MarketCategory   :      'Q',
                                Field.FinancialStatus  :      ' ',
                                Field.RoundLotSize     :       50,
                                Field.RoundLotsOnly    :      'Y',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      'R', message.MessageType )
        self.assertEqual(      105, message.NanoSeconds )
        self.assertEqual(   "AAPL", message.Stock )
        self.assertEqual(      'Q', message.MarketCategory )
        self.assertEqual(      ' ', message.FinancialStatus )
        self.assertEqual(       50, message.RoundLotSize )
        self.assertEqual(      'Y', message.RoundLotsOnly )

    def test_create_StockTradingAction(self):
        # GIVEN
        messageArgs = [ MessageType.StockTradingAction, {
                                Field.NanoSeconds      :      105,
                                Field.Stock            :   "AAPL",
                                Field.TradingState     :      'T',
                                Field.Reserved         :      ' ',
                                Field.Reason           :   "1234",
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      'H', message.MessageType )
        self.assertEqual(      105, message.NanoSeconds )
        self.assertEqual(   "AAPL", message.Stock )
        self.assertEqual(      'T', message.TradingState )
        self.assertEqual(      ' ', message.Reserved )
        self.assertEqual(   "1234", message.Reason )

    def test_create_RegSHORestriction(self):
        # GIVEN
        messageArgs = [ MessageType.RegSHORestriction, {
                                Field.NanoSeconds      :      105,
                                Field.Stock            :   "AAPL",
                                Field.RegSHOAction     :      '0',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      'Y', message.MessageType )
        self.assertEqual(      105, message.NanoSeconds )
        self.assertEqual(   "AAPL", message.Stock )
        self.assertEqual(      '0', message.RegSHOAction )

    def test_create_MarketParticipantPosition(self):
        # GIVEN
        messageArgs = [ MessageType.MarketParticipantPosition, {
                                Field.NanoSeconds             :      105,
                                Field.Mpid                    :   "mpid",
                                Field.Stock                   :   "AAPL",
                                Field.PrimaryMarketMaker      :      'Y',
                                Field.MarketMakerMode         :      'N',
                                Field.MarketParticipantState  :      'A',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'L', message.MessageType )
        self.assertEqual(        105, message.NanoSeconds )
        self.assertEqual(     "mpid", message.Mpid )
        self.assertEqual(     "AAPL", message.Stock )
        self.assertEqual(        'Y', message.PrimaryMarketMaker )
        self.assertEqual(        'N', message.MarketMakerMode )
        self.assertEqual(        'A', message.MarketParticipantState )

    def test_create_AddOrder(self):
        # GIVEN
        messageArgs = [ MessageType.AddOrder, {
                                Field.NanoSeconds : 101,
                                Field.OrderRefNum : 1001,
                                Field.Side : 'B',
                                Field.Shares : 300,
                                Field.Stock : "AAPL",
                                Field.Price : 100.99
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(     'A', message.MessageType )
        self.assertEqual(     101, message.NanoSeconds )
        self.assertEqual(    1001, message.OrderRefNum )
        self.assertEqual(     'B', message.Side )
        self.assertEqual(     300, message.Shares )
        self.assertEqual(  "AAPL", message.Stock )
        self.assertEqual(  100.99, message.Price )

    def test_create_AddOrder_with_Mpid(self):
        # GIVEN
        messageArgs = [ MessageType.AddOrderWithMPID, {
                                Field.NanoSeconds : 101,
                                Field.OrderRefNum : 1001,
                                Field.Side : 'B',
                                Field.Shares : 300,
                                Field.Stock : "AAPL",
                                Field.Price : 100.99,
                                Field.Mpid : "MyId"
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(     'F', message.MessageType )
        self.assertEqual(     101, message.NanoSeconds )
        self.assertEqual(    1001, message.OrderRefNum )
        self.assertEqual(     'B', message.Side )
        self.assertEqual(     300, message.Shares )
        self.assertEqual(  "AAPL", message.Stock )
        self.assertEqual(  100.99, message.Price )
        self.assertEqual(  "MyId", message.Mpid )

    def test_create_OrderExecuted(self):
        # GIVEN
        messageArgs = [ MessageType.OrderExecuted, {
                                Field.NanoSeconds : 104,
                                Field.OrderRefNum : 1002,
                                Field.Shares : 350,
                                Field.MatchNum : 123,
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(     'E', message.MessageType )
        self.assertEqual(     104, message.NanoSeconds )
        self.assertEqual(    1002, message.OrderRefNum )
        self.assertEqual(     350, message.Shares )
        self.assertEqual(     123, message.MatchNum )

    def test_create_OrderExecuted_with_Price(self):
        # GIVEN
        messageArgs = [ MessageType.OrderExecutedWithPrice, {
                                Field.NanoSeconds : 154,
                                Field.OrderRefNum : 1003,
                                Field.Shares : 375,
                                Field.MatchNum : 124,
                                Field.Printable : 'Y',
                                Field.Price: 123.2501
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       'C', message.MessageType )
        self.assertEqual(       154, message.NanoSeconds )
        self.assertEqual(      1003, message.OrderRefNum )
        self.assertEqual(       375, message.Shares )
        self.assertEqual(       124, message.MatchNum )
        self.assertEqual(  123.2501, message.Price )

    def test_create_OrderCancel(self):
        # GIVEN
        messageArgs = [ MessageType.OrderCancel, {
                                Field.NanoSeconds : 164,
                                Field.OrderRefNum : 1004,
                                Field.Shares : 400
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       'X', message.MessageType )
        self.assertEqual(       164, message.NanoSeconds )
        self.assertEqual(      1004, message.OrderRefNum )
        self.assertEqual(       400, message.Shares )

    def test_create_OrderDelete(self):
        # GIVEN
        messageArgs = [ MessageType.OrderDelete, {
                                Field.NanoSeconds : 165,
                                Field.OrderRefNum : 1005
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       'D', message.MessageType )
        self.assertEqual(       165, message.NanoSeconds )
        self.assertEqual(      1005, message.OrderRefNum )

    def test_create_OrderReplace(self):
        # GIVEN
        messageArgs = [ MessageType.OrderReplace, {
                                Field.NanoSeconds    :      175,
                                Field.OrderRefNum    :     1006,
                                Field.NewOrderRefNum :     1007,
                                Field.Shares         :      500,
                                Field.Price          : 123.2501
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       'U', message.MessageType )
        self.assertEqual(       175, message.NanoSeconds )
        self.assertEqual(      1006, message.OrderRefNum )
        self.assertEqual(      1007, message.NewOrderRefNum )
        self.assertEqual(       500, message.Shares )
        self.assertEqual(  123.2501, message.Price )

    def test_create_TradeNonCross(self):
        # GIVEN
        messageArgs = [ MessageType.TradeNonCross, {
                                Field.NanoSeconds    :      175,
                                Field.OrderRefNum    :     1006,
                                Field.Side           :      'B',
                                Field.Shares         :      300,
                                Field.Stock          :   "AAPL",
                                Field.Price          : 123.2501,
                                Field.MatchNum       :      400,
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'P', message.MessageType )
        self.assertEqual(        175, message.NanoSeconds )
        self.assertEqual(       1006, message.OrderRefNum )
        self.assertEqual(        'B', message.Side )
        self.assertEqual(        300, message.Shares )
        self.assertEqual(     "AAPL", message.Stock )
        self.assertEqual(   123.2501, message.Price )
        self.assertEqual(        400, message.MatchNum )

    def test_create_CrossTrade(self):
        # GIVEN
        messageArgs = [ MessageType.CrossTrade, {
                                Field.NanoSeconds    :      175,
                                Field.Shares         :      300,
                                Field.Stock          :   "AAPL",
                                Field.CrossPrice     : 123.2501,
                                Field.MatchNum       :      400,
                                Field.CrossType      :      'O',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'Q', message.MessageType )
        self.assertEqual(        175, message.NanoSeconds )
        self.assertEqual(        300, message.Shares )
        self.assertEqual(     "AAPL", message.Stock )
        self.assertEqual(   123.2501, message.CrossPrice )
        self.assertEqual(        400, message.MatchNum )
        self.assertEqual(        'O', message.CrossType )

    def test_create_BrokenTrade(self):
        # GIVEN
        messageArgs = [ MessageType.BrokenTrade, {
                                Field.NanoSeconds    :      175,
                                Field.MatchNum       :      400,
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'B', message.MessageType )
        self.assertEqual(        175, message.NanoSeconds )
        self.assertEqual(        400, message.MatchNum )

    def test_create_NetOrderImbalance(self):
        # GIVEN
        messageArgs = [ MessageType.NetOrderImbalance, {
                                Field.NanoSeconds              :       175,
                                Field.PairedShares             :      1000,
                                Field.ImbalanceShares          :      2000,
                                Field.ImbalanceDirection       :       'B',
                                Field.Stock                    :    "AAPL",
                                Field.FarPrice                 :  100.1234,
                                Field.NearPrice                :  101.9004,
                                Field.CurrentReferencePrice    :  102.8004,
                                Field.CrossType                :       'O',
                                Field.PriceVariationIndicator  :       'L',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'I', message.MessageType )
        self.assertEqual(        175, message.NanoSeconds )
        self.assertEqual(       1000, message.PairedShares )
        self.assertEqual(       2000, message.ImbalanceShares )
        self.assertEqual(        'B', message.ImbalanceDirection )
        self.assertEqual(     "AAPL", message.Stock )
        self.assertEqual(   100.1234, message.FarPrice )
        self.assertEqual(   101.9004, message.NearPrice )
        self.assertEqual(   102.8004, message.CurrentReferencePrice )
        self.assertEqual(        'O', message.CrossType )
        self.assertEqual(        'L', message.PriceVariationIndicator )

    def test_create_RetailInterestMessage(self):
        # GIVEN
        messageArgs = [ MessageType.RetailInterestMessage, {
                                Field.NanoSeconds   :       175,
                                Field.Stock         :    "AAPL",
                                Field.InterestFlag  :       'B',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(        'N', message.MessageType )
        self.assertEqual(        175, message.NanoSeconds )
        self.assertEqual(     "AAPL", message.Stock )
        self.assertEqual(        'B', message.InterestFlag )

class Create_Itch41_Messages_From_RawBytes(unittest.TestCase):
    """ Tests for creating, parsing and dumping Itch 41 messages from raw bytes 
        as encountered in a feed
    """

    def test_create_TimeStamp(self):
        # GIVEN
        rawMessage = bytearray()
        rawMessage.extend( [ 0x00, 0x05, 0x54, 0x00, 0x00, 0x58, 0xb7 ] )

        # WHEN
        message = ItchMessageFactory.createFromBytes( rawMessage )

        # THEN
        self.assertEqual(    'T', message.MessageType )
        self.assertEqual( 0x58b7, message.Seconds )

    def test_create_SystemEvent(self):
        # GIVEN
        rawMessage = bytearray()
        rawMessage.extend( [ 0x00, 0x06, 0x53, 0x11, 0xcd, 0x6c, 0xc9, 0x4f ])

        # WHEN
        message = ItchMessageFactory.createFromBytes( rawMessage )

        # THEN
        self.assertEqual(        'S', message.MessageType )
        self.assertEqual( 0x11cd6cc9, message.NanoSeconds )
        self.assertEqual(        'O', message.EventCode )

    def test_create_StockDirectory(self):
        # GIVEN
        rawMessage = bytearray()
        rawMessage.extend( [ 0x00, 0x14, 0x52, 0x1d, 0x48, 0xbd, 0xc7, 0x41 ] )
        rawMessage.extend( [ 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x4e ] )
        rawMessage.extend( [ 0x20, 0x00, 0x00, 0x00, 0x64, 0x4e ] )

        # WHEN
        message = ItchMessageFactory.createFromBytes( rawMessage )

        # THEN
        self.assertEqual(        'R', message.MessageType )
        self.assertEqual(  491306439, message.NanoSeconds )
        self.assertEqual(        "A", message.Stock)
        self.assertEqual(        "N", message.MarketCategory )
        self.assertEqual(       " ", message.FinancialStatus )
        self.assertEqual(       100, message.RoundLotSize )
        self.assertEqual(       'N', message.RoundLotsOnly )


if __name__ == "__main__":
    unittest.main()

