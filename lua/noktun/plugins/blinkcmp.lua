return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        nerd_font_variant = 'mono',
        kind_icons = {
          Text = 'text',
          Method = 'method',
          Function = 'func',
          Constructor = 'constr',

          Field = 'field',
          Variable = 'var',
          Property = 'prop',

          Class = 'class',
          Interface = 'interf',
          Struct = 'struct',
          Module = 'module',

          Unit = 'unit',
          Value = 'value',
          Enum = 'enum',
          EnumMember = 'enum mem',

          Keyword = 'keyword',
          Constant = 'const',

          Snippet = 'snip',
          Color = 'color',
          File = 'file',
          Reference = 'ref',
          Folder = 'dir',
          Event = 'event',
          Operator = 'operator',
          TypeParameter = 'type param',
        },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
          window = {
            border = 'rounded',
          },
        },
        menu = {
          draw = {
            treesitter = { 'lsp' },
          },
        },
      },
      signature = {
        enabled = true,
        window = {
          border = 'rounded',
        },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = 'prefer_rust_with_warning' },
    },
    opts_extend = { 'sources.default' },
  },
}
