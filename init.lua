-- neovim config from https://www.bilibili.com/video/BV1hP41117rt/
local set = vim.o
set.number = true
set.relativenumber = true
set.clipboard = "unnamed"
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.g.mapleader = " " 


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(
	{
		"RRethy/nvim-base16",
		lazy = true,
	}
)
vim.cmd.colorscheme("base16-tokyo-night-storm")
