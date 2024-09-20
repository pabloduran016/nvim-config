local luasnip = require 'luasnip'

require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

luasnip.filetype_extend("htmldjango", { "html" })
