---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 洪金敏.
--- DateTime: 2021/8/12 1:01
---

local m = {}

function m:add(id, name)
    m[id] = name
end

function m:get(id)
    return m[id]
end

return m