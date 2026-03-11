-- LSP Notifications off --
return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "written" },
              { find = "format" },
            },
          },
          opts = { skip = true },
        },
      },
    },
  },
}
