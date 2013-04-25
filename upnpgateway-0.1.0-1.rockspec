package = "upnpgateway"
version = "0.1.0-1"
source = {
    url = "to be done",
}
description = {
    summary = "UPnPgateway to wrap existing hard and software in UPnP devices",
    detailed = [[
    ]],
    license = "unknown",
    homepage = "http://www.thijsschreijer.nl/"
}
dependencies = {
    --"luaupnp >= 0.1",
    "serpent >= 0.20",
}
build = {
    type = "builtin",
    modules = {
        ["upnpgateway.drivers.demo1"]                = "src/upnpgateway/drivers/demo1.lua",
        ["upnpgateway.drivers.demo2"]                = "src/upnpgateway/drivers/demo2.lua",
        ["upnpgateway.drivers.demo3"]                = "src/upnpgateway/drivers/demo3.lua",
        ["upnpgateway.drivers.driver-template"]      = "src/upnpgateway/drivers/driver-template.lua",
        ["upnpgateway.drivers.xplrfx"]               = "src/upnpgateway/drivers/xplrfx.lua",
    },
    install = {
      bin = {
        "src/upnpgateway.lua"
      },
    },
    --copy_directories = { "doc", "test" },
}