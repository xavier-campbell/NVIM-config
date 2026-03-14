vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- netrw
vim.keymap.set("n", "<leader>vf", vim.cmd.Ex, { desc = "open file explorer" })

-- Move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move selection up" })

-- Center cursor on scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up centered" })

-- Center search results
vim.keymap.set("n", "n", "nzzzv", { desc = "next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "previous search result centered" })

-- Indentation in visual mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "de-indent selection" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "indent selection" })

-- Disable arrow keys
vim.keymap.set("n", "<left>",  "<cmd>echo 'Use h to move!!'<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!!'<CR>")
vim.keymap.set("n", "<up>",    "<cmd>echo 'Use k to move!!'<CR>")
vim.keymap.set("n", "<down>",  "<cmd>echo 'Use j to move!!'<CR>")

-- Paste without overwriting clipboard
vim.keymap.set("x", "<leader>p", [["_dp]], { desc = "paste without yanking" })
vim.keymap.set("v", "p", '"_dp', { noremap = true, silent = true, desc = "paste without yanking" })

-- Clear search highlight
vim.keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "clear search highlight" })

-- LSP formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format buffer with LSP" })

-- Delete without yanking
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true, desc = "delete without yanking" })

-- Replace word under cursor
vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "replace word under cursor globally" }
)

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tab split<CR>", { desc = "buffer in new tab" })

-- Splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "vertical split" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "horizontal split" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "equalize splits" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close split" })
