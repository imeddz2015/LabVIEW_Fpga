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
        self.assertEqual( 100, message.getValue( Field.Seconds ))

    def test_create_SystemEvent(self):
        # GIVEN
        messageArgs = [ MessageType.SystemEvent, {
                                Field.NanoSeconds    :      105,
                                Field.EventCode      :       'O'
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      105, message.getValue( Field.NanoSeconds ))
        self.assertEqual(       'O', message.getValue( Field.EventCode ))

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
        self.assertEqual(      105, message.getValue( Field.NanoSeconds ))
        self.assertEqual(   "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(      'Q', message.getValue( Field.MarketCategory ))
        self.assertEqual(      ' ', message.getValue( Field.FinancialStatus ))
        self.assertEqual(       50, message.getValue( Field.RoundLotSize ))
        self.assertEqual(      'Y', message.getValue( Field.RoundLotsOnly ))

    def test_create_StockTradingAction(self):
        # GIVEN
        messageArgs = [ MessageType.StockTradingAction, {
                                Field.NanoSeconds      :      105,
                                Field.Stock            :   "AAPL",
                                Field.TradingState     :      'T',
                                Field.Reserved         :      ' ',
                                Field.Reason           :      ' ',
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(      105, message.getValue( Field.NanoSeconds ))
        self.assertEqual(   "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(      'T', message.getValue( Field.TradingState ))
        self.assertEqual(      ' ', message.getValue( Field.Reserved ))
        self.assertEqual(      ' ', message.getValue( Field.Reason ))

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
        self.assertEqual(      105, message.getValue( Field.NanoSeconds ))
        self.assertEqual(   "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(      '0', message.getValue( Field.RegSHOAction))

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
        self.assertEqual(        105, message.getValue( Field.NanoSeconds ))
        self.assertEqual(     "mpid", message.getValue( Field.Mpid ))
        self.assertEqual(     "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(        'Y', message.getValue( Field.PrimaryMarketMaker ))
        self.assertEqual(        'N', message.getValue( Field.MarketMakerMode ))
        self.assertEqual(        'A', message.getValue( Field.MarketParticipantState ))

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
        self.assertEqual(     101, message.getValue( Field.NanoSeconds ))
        self.assertEqual(    1001, message.getValue( Field.OrderRefNum ))
        self.assertEqual(     'B', message.getValue( Field.Side ))
        self.assertEqual(     300, message.getValue( Field.Shares ))
        self.assertEqual(  "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(  100.99, message.getValue( Field.Price ))

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
        self.assertEqual(     101, message.getValue( Field.NanoSeconds ))
        self.assertEqual(    1001, message.getValue( Field.OrderRefNum ))
        self.assertEqual(     'B', message.getValue( Field.Side ))
        self.assertEqual(     300, message.getValue( Field.Shares ))
        self.assertEqual(  "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(  100.99, message.getValue( Field.Price ))
        self.assertEqual(  "MyId", message.getValue( Field.Mpid ))

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
        self.assertEqual(     104, message.getValue( Field.NanoSeconds ))
        self.assertEqual(    1002, message.getValue( Field.OrderRefNum ))
        self.assertEqual(     350, message.getValue( Field.Shares ))
        self.assertEqual(     123, message.getValue( Field.MatchNum ))

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
        self.assertEqual(       154, message.getValue( Field.NanoSeconds ))
        self.assertEqual(      1003, message.getValue( Field.OrderRefNum ))
        self.assertEqual(       375, message.getValue( Field.Shares ))
        self.assertEqual(       124, message.getValue( Field.MatchNum ))
        self.assertEqual(  123.2501, message.getValue( Field.Price ))

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
        self.assertEqual(       164, message.getValue( Field.NanoSeconds ))
        self.assertEqual(      1004, message.getValue( Field.OrderRefNum ))
        self.assertEqual(       400, message.getValue( Field.Shares ))

    def test_create_OrderDelete(self):
        # GIVEN
        messageArgs = [ MessageType.OrderDelete, {
                                Field.NanoSeconds : 165,
                                Field.OrderRefNum : 1005
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       165, message.getValue( Field.NanoSeconds ))
        self.assertEqual(      1005, message.getValue( Field.OrderRefNum ))

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
        self.assertEqual(       175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(      1006, message.getValue( Field.OrderRefNum ))
        self.assertEqual(      1007, message.getValue( Field.NewOrderRefNum ))
        self.assertEqual(       500, message.getValue( Field.Shares ))
        self.assertEqual(  123.2501, message.getValue( Field.Price ))

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
        self.assertEqual(       175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(      1006, message.getValue( Field.OrderRefNum ))
        self.assertEqual(      'B', message.getValue( Field.Side ))
        self.assertEqual(      300, message.getValue( Field.Shares ))
        self.assertEqual(      "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(      123.2501, message.getValue( Field.Price ))
        self.assertEqual(      400, message.getValue( Field.MatchNum ))

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
        self.assertEqual(       175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(       300, message.getValue( Field.Shares ))
        self.assertEqual(    "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(      123.2501, message.getValue( Field.CrossPrice ))
        self.assertEqual(      400, message.getValue( Field.MatchNum ))
        self.assertEqual(      'O', message.getValue( Field.CrossType ))

    def test_create_BrokenTrade(self):
        # GIVEN
        messageArgs = [ MessageType.BrokenTrade, {
                                Field.NanoSeconds    :      175,
                                Field.MatchNum       :      400,
                             } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual(       175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(       400, message.getValue( Field.MatchNum ))

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
        self.assertEqual(        175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(       1000, message.getValue( Field.PairedShares ))
        self.assertEqual(       2000, message.getValue( Field.ImbalanceShares ))
        self.assertEqual(        'B', message.getValue( Field.ImbalanceDirection ))
        self.assertEqual(     "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(   100.1234, message.getValue( Field.FarPrice ))
        self.assertEqual(   101.9004, message.getValue( Field.NearPrice ))
        self.assertEqual(   102.8004, message.getValue( Field.CurrentReferencePrice ))
        self.assertEqual(        'O', message.getValue( Field.CrossType ))
        self.assertEqual(        'L', message.getValue( Field.PriceVariationIndicator ))

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
        self.assertEqual(        175, message.getValue( Field.NanoSeconds ))
        self.assertEqual(     "AAPL", message.getValue( Field.Stock ))
        self.assertEqual(        'B', message.getValue( Field.InterestFlag ))

if __name__ == "__main__":
    unittest.main()

