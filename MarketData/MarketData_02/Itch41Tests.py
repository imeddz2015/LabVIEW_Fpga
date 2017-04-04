#!/usr/bin/env python3

import unittest

from Itch41 import *

class Itch41Test(unittest.TestCase):
    """ Tests for creating, parsing and dumping Itch 41 messages """

    def test_create_TimeStamp(self):
        # GIVEN
        messageArgs = [ MessageType.TimeStamp, { Field.Seconds: 100 } ]

        # WHEN
        message = ItchMessageFactory.createFromArgs( messageArgs )

        # THEN
        self.assertEqual( 100, message.getValue( Field.Seconds ))

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
        messageArgs = [ MessageType.AddOrderMPID, {
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
        messageArgs = [ MessageType.OrderExecutedPrice, {
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


if __name__ == "__main__":
    unittest.main()

