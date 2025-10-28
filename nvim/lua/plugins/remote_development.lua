return {
   "amitds1997/remote-nvim.nvim",
   version = "*", -- Pin to GitHub releases
   dependencies = {
       "nvim-lua/plenary.nvim", -- For standard functions
       "MunifTanjim/nui.nvim", -- To build the plugin UI
       "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
   },
    config = function()
      require('remote-nvim').setup {
        ssh_config = {
          scp_binary = 'rsync', -- Binary to use for running SSH copy commands
        },
      }
    end,
}
