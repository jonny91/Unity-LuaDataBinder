local binder = require "Binder"
local model = require "Model"

package.cpath = package.cpath .. ';C:/Users/Jonny/AppData/Local/JetBrains/Toolbox/apps/Rider/ch-0/211.7628.61.plugins/EmmyLua/classes/debugger/emmy/windows/x64/?.dll'
local dbg = require('emmy_core')
dbg.tcpConnect('localhost', 9966)


function Main()
    local role_data = {
        ["name"] = "role_1",
        ["hobby"] = "sleep",
        ["age"] = 1,
    }

    model:add(1, binder.data(role_data))

    local panel = require("SamplePanel")
    panel:Load()
    panel:Refresh(model:get(1))
    panel:Start()
end

