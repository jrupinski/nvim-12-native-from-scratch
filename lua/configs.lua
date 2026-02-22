local opt = vim.opt

-- Sync clipboard between OS and Neovim
opt.clipboard = 'unnamedplus' 

-- Show line numbers
opt.number = true 

-- Show relative line numbers
opt.relativenumber = true 

-- Directory for undo files
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

-- Enable persistent undo
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
opt.confirm = true

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
opt.listchars = { tab = '» ', trail = '·', lead = '·', nbsp = '␣' }

 -- Enable auto indentation
opt.autoindent = true

 -- Use spaces instead of tabs
opt.expandtab = true

 -- Number of spaces for a tab
opt.tabstop = 2

 -- Number of spaces for a tab when editing
opt.softtabstop = 2

 -- Number of spaces for autoindent
opt.shiftwidth = 2

-- Round indent to multiple of shiftwidth
opt.shiftround = true

-- Show whitespace characters
opt.list = true

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Preview substitutions live, as you type
opt.inccommand = 'split'

-- Enable break indent and indent it
opt.breakindent = true
opt.breakindentopt = "shift:2,sbr"
vim.opt.showbreak = "↳ "
-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Enable mouse mode in all modes, can be useful for resizing splits for example!
opt.mouse = 'a'

-- Show which line your cursor is on
opt.cursorline = true

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable swap files (no more annoying swap file errors)
opt.swapfile = false

-- will probably migrate these to plugins
-- Always show completion menu, even if 1 option is available
opt.completeopt = { "menuone", "popup", "noinsert" }
-- Use rounded borders for windows
opt.winborder = "rounded"

