package = "nats"
version = "0.0.2-1"

source = {
   url = "git://github.com/DawnAngel/lua-nats.git",
   tag = "0.0.2"
}

description = {
   summary = "LUA client for NATS messaging system. https://nats.io",
   detailed = [[
      LUA client for NATS messaging system. https://nats.io
   ]],
   homepage = "http://github.com/DawnAngel/lua-nats",
   maintainer = "Eric Pinto <ericpinto1985@gmail.com>",
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
         "src/nats.lua"
      }
   }
}
