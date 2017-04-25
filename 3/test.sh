#!/usr/bin/expect

#expect.sh

spawn ./bof

expect "overflow me :\n"

send ""
