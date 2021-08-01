local binder = require "Binder"

function Main()

    --local t = binder.data({ x = 123 })
    --binder.bind(t, "x", function(val, old)
    --    print(old .. " => " .. val)
    --end)
    --
    --t.x = 12
    --t.x = 123

    local panel = require("SamplePanel")
    panel:Load()
end

