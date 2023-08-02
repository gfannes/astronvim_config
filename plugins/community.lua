return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.note-taking.neorg" },
  {
    "nvim-neorg/neorg",
    opts = {
      load = {
        ["core.dirman"] = {
          config = {
            workspaces = {
              gubg = "~/gubg",
              auro = "~/am",
              subsoil = "~/decode-it/subsoil",
            }
          }
        }
      }
    }
  },

  {import = "astrocommunity.editing-support.multicursors-nvim"},

  { import = "astrocommunity.pack.rust" },

  {import = "astrocommunity.programming-language-support.csv-vim"},

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
