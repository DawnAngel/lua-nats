package = "nats"
version = "0.0.1-1"

source = {
   url = "git://github.com/DawnAngel/lua-nats.git",
   tag = "0.0.1"
}

description = {
   summary = "LUA client for NATS messaging system. https://nats.io",
   detailed = [[
      LUA client for NATS messaging system. https://nats.io
   ]],
   homepage = "http://github.com/DawnAngel/lua-nats",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1",
   "luasocket",
   "lua-cjson",
   "uuid"
}

build = {
   type = "none",
   install = {
      lua = {
         "nats.lua"
      }
   }
}
