local cmp = require 'cmp'
local luasnip = require 'luasnip'

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local mappings = {
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-d>'] = cmp.mapping.close(),
  ['<C-y>'] = cmp.mapping.confirm { select = true, },
  ["<tab>"] = cmp.config.disable,
}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  mapping = cmp.mapping.preset.insert(mappings),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'path' },
    { name = 'buffer', keyword_length = 4, }
  }),
  experimental = {
    ghost_text = true,
  },
}

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "nvim_lsp_document_symbol" },
    { name = 'buffer',                  keyword_length = 2 }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'cmdline', keyword_length = 2 },
    { name = 'path',    max_item_count = 4 }
  }
})

-- vim: ts=2 sts=2 sw=2 et
