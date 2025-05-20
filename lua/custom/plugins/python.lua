-- Create this file at: lua/custom/plugins/python.lua

return {
  -- Python-specific plugins
  {
    -- Enhance Python development
    "wookayin/semshi",
    ft = "python",
    build = ":UpdateRemotePlugins",
    init = function()
      -- Disable automatic highlighting from treesitter when using semshi
      vim.g.semshi_no_highlight = 0
    end,
  },
  
  -- Virtual environment support for Python
  {
    "AckslD/swenv.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    ft = "python",
    config = function()
      require("swenv").setup({
        venv_path = vim.fn.expand("~/.virtualenvs"),
        venv_paths = {
          vim.fn.expand("~/.pyenv/versions"),
          vim.fn.expand("~/.conda/envs"),
        },
      })
      
      -- Add keymaps for virtualenv management
      vim.keymap.set("n", "<leader>pv", function() require("swenv.api").pick_venv() end, 
                    {desc = "Python: Choose virtualenv"})
      vim.keymap.set("n", "<leader>pd", function() print(require("swenv.api").get_current_venv()) end,
                    {desc = "Python: Show current virtualenv"})
    end,
  },
  
  -- Python test runner
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
    },
    ft = "python",
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            -- Runner options
            runner = "pytest",
            -- Arguments for the runner
            args = {"--no-cov"},
            -- Python path detection
            python = function()
              -- Try to use the virtualenv python if available
              local venv = require("swenv.api").get_current_venv()
              if venv then
                return venv.path .. "/bin/python"
              end
              -- Default to system python
              return vim.fn.exepath("python") or vim.fn.exepath("python3")
            end,
          })
        }
      })
      
      -- Keymaps for testing
      vim.keymap.set("n", "<leader>pt", function() require("neotest").run.run() end, 
                    {desc = "Python: Run nearest test"})
      vim.keymap.set("n", "<leader>pT", function() require("neotest").run.run(vim.fn.expand("%")) end, 
                    {desc = "Python: Run file tests"})
      vim.keymap.set("n", "<leader>ps", function() require("neotest").summary.toggle() end,
                    {desc = "Python: Toggle test summary"})
    end,
  },
  
  -- Better Python indentation
  {
    "Vimjas/vim-python-pep8-indent",
    ft = "python",
  },
}
