local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

-- Install your plugins here
return packer.startup(function(use)
	-- must have plugins
	use("wbthomason/packer.nvim") -- Have packer manage itself
--	use("preservim/nerdtree")
--	use("nvim-lua/plenary.nvim")
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
--	use("junegunn/goyo.vim")
	use{"vimwiki/vimwiki",
		config = function()
		vim.g.vimwiki_list = {
		{
			path = '~/.local/share/nvim/vimwiki',
			syntax = 'markdown',
			ext = '.md',
		}

		}
		vim.g.vimwiki_ext2syntax = {
        		['.Rmd'] = 'markdown',
        		['.rmd'] = 'markdown',
        		['.md'] = 'markdown',
        		['.markdown'] = 'markdown',
        		['.mdown'] = 'markdown',
      	}
		end
	}
 	use('mbbill/undotree')
 	use("tpope/vim-surround")
	use("vim-airline/vim-airline")
	use("tpope/vim-commentary")
	-- use("ap/vim-css-color")

	-- Colorschemes
	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  	use('nvim-treesitter/playground')
  	use("ellisonleao/gruvbox.nvim")

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  	}
	use("jose-elias-alvarez/null-ls.nvim")
	use("RRethy/vim-illuminate")
	-- harpoon
	use("ThePrimeagen/harpoon")
	use("folke/zen-mode.nvim")
        use("eandrju/cellular-automaton.nvim")

	use('tpope/vim-fugitive')
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

--Plug 'jreybert/vimagit' let g:vimwiki_ext2syntax = {'.Rmd': 'markdown',
