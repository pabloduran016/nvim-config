local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
    html = {
        snip({
            trig = "span.",
            namr = "Span with class",
        }, {
            text({ "<span class=\"" }),
            insert(1, "class"),
            text({ "\">" }),
            insert(2, "inner"),
            text({ "</span>" }),
            insert(3, ""),
        }),
    },
})
