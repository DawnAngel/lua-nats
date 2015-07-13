package.path = "../src/?.lua;src/?.lua;" .. package.path
pcall(require, "luarocks.require")

local nats = require 'nats'

local params = {
    host = '127.0.0.1',
    port = 4222,
}

local client = nats.connect(params)

-- client:enable_trace()
client:connect()
local server_info = client:get_server_info()

for k, v in pairs(server_info) do
    print(k, v)
end
