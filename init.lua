require("plugins")
require("autocomplete")

--require("neo-tree").setup({
--    source_selector = {
--        winbar = true,
--        statusline = false
--    }
--})

-- Options -- 
vim.opt.encoding = "utf-8"
vim.opt.timeout = false
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autochdir = false
vim.cmd.colorscheme("github_dark_default")

-- Remaps --
vim.g.mapleader = " "
vim.api.nvim_set_keymap(
    "n",
    "<leader>s",
    ":ToggleWorkspace<cr>",
    { noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<A-Right>",
    "gt",
    { noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<A-Left>",
    "gT",
    { noremap = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>z",
    ":Centerpad<CR>",
    { noremap = true }
)
-- Plugin configs --

-- vim-workspace --
vim.g.workspace_session_disable_on_args = 1
vim.g.workspace_create_new_tabs = 0

-- vim-rooter --
vim.g.rooter_change_directory_for_non_project_files = ''
vim.g.rooter_patterns = {'.git', 'Makefile', 'build/env.sh', 'init.lua'}

-- Neotree --

-- Centerpad --


--vim.api.nvim_create_autocmd(
--    {"WinNew", "WinClosed", "VimEnter"},
--    {callback = function(event)
--
--        local event_name = event["event"]
--
--        if #vim.api.nvim_tabpage_list_wins(0) > 3 and vim.g.center_buf_enabled then
--            require("centerpad").turn_off()
--        end
--        
--        if #vim.api.nvim_tabpage_list_wins(0) <= 2 and not vim.g.center_buf_enabled and (event_name == "WinClosed" or event_name=="VimEnter") then
--            vim.cmd("wincmd  w")
--            require("centerpad").turn_on()
--        end
--    end
--    }
--)
--
--vim.

