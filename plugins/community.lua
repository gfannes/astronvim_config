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
              notes = "",
              gubg = "~/gubg",
              auro = "~/decode-it/newauro",
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

  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_c = {{"filename", path = 2}},
      }
    }
  },

  { import = "astrocommunity.motion.mini-surround"}
}
