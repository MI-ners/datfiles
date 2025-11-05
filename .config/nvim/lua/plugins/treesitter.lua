return { 
  {
    "nvim-treesitter/nvim-treesitter", branch = 'master', 
    lazy = false, build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
        auto_install = true,
        highlights = { enable = true },
        indent = { enable = true },
      })
    end
 }
}


 
