local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local packer_bootstrap = false -- Indicate first time installation

local conf = {
	profile = {
		enable = true,
		threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
	},

	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
}

local function packer_init()
	-- Check if packer.nvim is installed
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		packer_bootstrap = fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		cmd([[packadd packer.nvim]])
	end

	-- Run PackerCompile if there are changes in this file
	local packerGrp = api.nvim_create_augroup("packer_user_config", { clear = true })
	api.nvim_create_autocmd(
		{ "BufWritePost" },
		{ pattern = "init.lua", command = "source <afile> | PackerCompile", group = packerGrp }
	)
end

local function plugins(use)
 use 'wbthomason/packer.nvim'

use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons',
config = function()
  require("bufferline").setup{}
end
}

 use { "nvim-lualine/lualine.nvim",
  config = function()
    require("config.lualine")
  end
 }

use({
  "folke/noice.nvim",
  config = function()
    require("noice").setup()
  end,
  requires = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
})

 use {'neoclide/coc.nvim', branch = 'release'}
     --[[ On new systems install COC packages via
        CocInstall coc-vimtex coc-texlab
    --]]
-- use{'mhartington/oceanic-next'}
 use {'joshdick/onedark.vim'}

 use{ 'nvim-lua/plenary.nvim'}
 use{'nvim-telescope/telescope.nvim', tag = '0.1.0' }

 use{'nvim-tree/nvim-web-devicons'}
 use{'nvim-tree/nvim-tree.lua'}

--use{'nvim-lualine/lualine.nvim'}

use{'karb94/neoscroll.nvim'}


  if packer_bootstrap then
	  		print("Neovim restart is required after installation!")
		require("packer").sync()
	end
end

packer_init()
local packer = require("packer")
packer.init(conf)
packer.startup(plugins)


require('config.opts')
require('config.tree')
require('config.coc')
require('config.keymap')
