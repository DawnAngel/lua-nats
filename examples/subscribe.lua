package.path = '../src/?.lua;src/?.lua;' .. package.path
pcall(require, 'luarocks.require')

local nats = require 'nats'

local params = {
    host = '127.0.0.1',
    port = 4222,
}

local client = nats.connect(params)

local function subscribe_callback(payload)
    print('Received data: ' .. payload)
end

-- client:enable_trace()
client:connect()
local subscribe_id = client:subscribe('foo', subscribe_callback)
client:wait(2)
client:unsubscribe(subscribe_id)
