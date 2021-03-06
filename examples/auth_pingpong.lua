package.path = '../src/?.lua;src/?.lua;' .. package.path
pcall(require, 'luarocks.require')

local nats = require 'nats'

local params = {
    host = '127.0.0.1',
    port = 4222,
}

local client = nats.connect(params)

client:enable_trace()
client:set_auth('user', 'password')

client:connect()
client:ping()
