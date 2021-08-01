---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Jonny.
--- DateTime: 2021/8/1 13:25
---

local binder = require("Binder")
local Panel = {}

function Panel:Load()
    -- 数据绑定
    self.count_data = binder.data({ ["count"] = 0 })

    self.gameObject = ModuleManager.GetInstance():OpenSample()
    self.btn_go = self.gameObject.transform:Find("Button")
    self.result_text = self.gameObject.transform:Find("ResultText")
end

function Panel:Start()
    binder.bind_component(self.count_data, "count", self.result_text)
    self.btn_go:GetComponent("XButton").onClick:AddListener(function(obj)
        -- 改变数据
        self.count_data.count = self.count_data.count + 1
    end)
end

return Panel