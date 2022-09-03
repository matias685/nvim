local packer = require('packer')

return packer.startup({
  function()
    local use = packer.use

    use 'wbthomason/packer.nvim'

  -- status line
    use {
    "nvim-lualine/lualine.nvim",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.lualine') end
    }

    use {
	"windwp/nvim-autopairs",
    config = function() require('plugins.autopairs') end
    }

    use {
    "aktersnurra/no-clown-fiesta.nvim",
    config = function() require('plugins.no-clown-fiesta') end
    }

    use {
    "norcalli/nvim-colorizer.lua",
    config = function() require('plugins.nvim-colorizer') end
    }

    end
})
