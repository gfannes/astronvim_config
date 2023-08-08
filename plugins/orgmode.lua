local M = {
  {
    "nvim-orgmode/orgmode",
    lazy = false,
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', 'prichrd/netrw.nvim' }
    },
    config = function()
      require("orgmode").setup_ts_grammar()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "org" },
        },
        ensure_installed = { "org" }, -- Or run :TSUpdate org
      })
      require("orgmode").setup({
        org_agenda_files = { "~/decode-it/newauro/**/*" },
        -- org_default_notes_file = "~/org/refile.org",
        org_todo_keywords = { "TODO(t)", "NEXT(n)", "WIP(w)", "BLOCKED(b)", "READY(r)", "|", "DONE(d)" },
        org_todo_keyword_faces = {
          NEXT = ":foreground orange",
          WIP = ":foreground purple",
          BLOCKED = ":background grey",
          READY = ":foreground OliveDrab",
        },
        org_capture_templates = {
          t = {
            description = "Todo",
            template = "* TODO %?\n%U",
            target = "~/org/todo.org",
          },
          j = {
            description = "Journal",
            template = "\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?",
            target = "~/org/journal.org",
          },
          n = {
            description = "Notes",
            template = "* %?\n %u",
            target = "~/org/notes.org",
          },
        },
      })
    end,
  }
}

return M
