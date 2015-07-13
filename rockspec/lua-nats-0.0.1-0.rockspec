package = "lua-nats"
version = "0.0.1-0"

source = {
   url = "http://cloud.github.com/downloads/dawnangel/lua-nats/lua-nats-0.0.1-0.tar.gz",
   md5 = ""
}

description = {
   summary = "LUA client for NATS messaging system. https://nats.io",
   detailed = [[
      LUA client for NATS messaging system. https://nats.io
   ]],
   homepage = "http://github.com/dawnangel/lua-nats",
   license = "MIT"
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
