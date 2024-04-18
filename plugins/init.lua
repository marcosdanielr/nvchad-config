return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",

        "prettier",


        "eslint-lsp",
        "tailwind-css-language-server",
        "typescript-language-server",
        "prisma-language-server"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "lua",
        "javascript",
        "typescript",
        "jsx",
        "go",
        "rust",
        "prisma"
      }
    },

    {
      "nvimtools/none-ls.nvim",
      event = "VeryLazy",
      dependencies = {
        "nvimtools/none-ls-extras.nvim",
      },
      opts = function()
        return require "configs.null-ls"
      end
    },

    {
      "windwp/nvim-ts-autotag",
      ft = {
        "javascript",
        "javascriptreact",
        "typescript",
        "javascriptreact",
      },
      opts = function()
        require "nvim-ts-autotag".setup()
      end
    }
  },
  {
    "numToStr/Comment.nvim",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },
}
