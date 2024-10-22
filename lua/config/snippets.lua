local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("lua", {
  s("hello", {
    t('print("hello '),
    i(1),
    t(' world")'),
  }),

  s("for", {
    t("for "),
    i(1, "i"), -- The loop variable
    t(" = "),
    i(2, "1"), -- Start value
    t(", "),
    i(3, "10"), -- End value
    t(" do"),
    t({ "", "  " }), -- New line and indentation
    i(4), -- User can insert the loop body here
    t({ "", "end" }), -- End of the loop
  }),

  s("if", {
    t("if "),
    i(1, "true"),
    t(" then "),
    i(2),
    t(" end"),
  }),
})
