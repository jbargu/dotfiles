return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Notifications
  use "rcarriga/nvim-notify"

  -- Code runner
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- DAP
  use { "nvim-neotest/nvim-nio" }
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  use "mfussenegger/nvim-dap-python"
  use "nvim-telescope/telescope-dap.nvim"
end)
