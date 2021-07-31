---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Jonny.
--- DateTime: 2021/8/1 01:02
---

local Binder = {}

function Binder.data(d)
    local binder = {}
    local meta
    meta = {
        __bind = {},

        __index = function(table, key)
            return meta[key]
        end,
        __newindex = function(table, key, value)
            local old_value = meta[key]
            -- 值改变了
            if old_value ~= value then
                meta[key] = value

                local slots = meta.__bind[key]
                if slots then
                    for _, v in ipairs(slots) do
                        v(value, old_value)
                    end
                end
            end
        end
    }
    setmetatable(binder, meta)
    for k, v in pairs(d) do
        binder[k] = v
    end
    return binder
end

function Binder.bind(table, key, func)
    local binds = table.__bind
    binds[key] = binds[key] or {}
    local bind = binds[key]
    bind[#bind + 1] = func
    return #binds
end

return Binder