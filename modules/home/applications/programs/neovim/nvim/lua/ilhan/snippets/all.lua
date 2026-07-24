---@diagnostic disable: undefined-global

local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local function format_date(offset_days)
    local seconds_in_day = 86400
    local target_time = os.time() + (offset_days * seconds_in_day)
    return os.date("%a %m/%d/%Y", target_time)
end

return {
    s({
        trig = ";date",
        snippetType = "autosnippet",
    }, f(function()
        return format_date(0)
    end)),

    s({
        trig = ";tdate",
        snippetType = "autosnippet",
    }, f(function()
        return format_date(1)
    end)),

    s({
        trig = ";ydate",
        snippetType = "autosnippet",
    }, f(function()
        return format_date(-1)
    end)),
}
