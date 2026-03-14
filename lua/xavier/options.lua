-- Turns cursor into block mode
vim.opt.guicursor = ""

-- Line number settings
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

-- Enables mouse in all modes
vim.opt.mouse = 'a'

vim.opt.showmode = true

-- Ability to undo last changes persits even after file close
vim.opt.undofile = true

-- Does not create seperate swapfile for changes and does not create backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Keeps sign column on by default (gap between numbers and border) helps with standardising display
vim.opt.signcolumn = 'yes' 

-- Shows what line the cursor is on
vim.opt.cursorline = true

-- Tab options, defines amount of characters for tab and how many to delete
vim.opt.tabstop = 4
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4 
vim.expandtab = true

-- Lines will auto indent to previous lines depth, lines will not wrap on screen
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Search related options, incsearch allows for incremental search, inccommand previews changes as they are typed
-- ignore case allows for case insensitive searches, smart case performs case sensitive searches if one or more capital letters are present
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Makes backspace perform like in normal text editor
vim.opt.backspace = {'indent', 'eol', 'start'}

-- configures how splits are opened, will put the new windows on the side specified in the option
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Decrease update time
vim.opt.updatetime = 250

-- Adds a transparent bar at the specified number of characters from the left
--vim.opt.colorcolumn = "80"

-- Syncs os and neovim clipboard
vim.opt.clipboard:append("unnamedplus")
