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
        org_todo_keywords = { "INBOX(i)", "UNCLEAR(u)", "TODO(t)", "ACTIVE(a)", "ACTIVEX(x)", "NEXT(n)", "VALIDATION(v)", "REWORK(r)", "WAITING(w)", "BLOCKED(b)", "MAYBE(m)", "|", "DONE(d)" },
        org_todo_keyword_faces = {
          INBOX = ":foreground yellow",
          UNCLEAR = ":background red",
          NEXT = ":foreground orange",

          ACTIVE = ":foreground cyan",
          ACTIVEX = ":foreground OliveDrab",
          VALIDATION = ":foreground purple",
          REWORK = ":background purple",

          WAITING = ":background grey",
          BLOCKED = ":background grey",
          MAYBE = ":foreground grey",
        },
        org_log_done = false,
        org_capture_templates = {
          i = {
            description = "Inbox",
            template = "* INBOX %?\n%U",
            target = "~/decode-it/newauro/inbox.org",
          },
          t = {
            description = "Todo",
            template = "* TODO %?\n%U",
            target = "~/decode-it/newauro/todo.org",
          },
          j = {
            description = "Journal",
            template = "\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?",
            target = "~/decode-it/newauro/journal.org",
          },
          n = {
            description = "Notes",
            template = "* %?\n %u",
            target = "~/decode-it/newauro/notes.org",
          },
        },
        org_priority_highest = "A",
        org_priority_default = "C",
        org_priority_lowest = "E",
      })
    end,
  }
}

return M
