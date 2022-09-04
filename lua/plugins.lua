local packer = require('packer')

return packer.startup({
  function()
    local use = packer.use

    use 'wbthomason/packer.nvim'

    use {
    "nvim-lualine/lualine.nvim",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.lualine') end
    }
    use {
	"windwp/nvim-autopairs",
    config = function() require('plugins.autopairs') end
    }
    use {"ellisonleao/glow.nvim",
    config = function() require('plugins.glow') end
    }
    use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    })
    use {
    "aktersnurra/no-clown-fiesta.nvim",
    config = function() require('plugins.no-clown-fiesta') end
    }

    use {
    "norcalli/nvim-colorizer.lua",
    config = function() require('plugins.nvim-colorizer') end
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      requires = {
        { 'nvim-treesitter/playground' }, { 'p00f/nvim-ts-rainbow' },
        { 'JoosepAlviste/nvim-ts-context-commentstring' },
        { 'windwp/nvim-ts-autotag' },
        { 'nvim-treesitter/nvim-treesitter-textobjects' },
        { 'RRethy/nvim-treesitter-textsubjects' },
        { 'RRethy/nvim-treesitter-endwise' }
      },
      run = function() cmd('TSUpdate') end,
        config = function() require('plugins.treesitter') end
    }

    end
})
