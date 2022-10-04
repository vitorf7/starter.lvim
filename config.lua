-- ===================================== General Section ============================================
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.breadcrumbs.active = true


-- =================================== Treesitter Section ===========================================
lvim.builtin.treesitter.ensure_installed = {
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


-- ======================================= LSP Section ==============================================
-- Will override the LSP formatting capabilities if any exist
local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("intelephense")
lsp_manager.setup("phpactor")

-- More information on how to install the debug adapter
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#PHP
local debugger_install_path = os.getenv("HOME") .. "/Code/vscode-php-debug/" -- Change this line to be the path you installed the debugger
lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { debugger_install_path .. 'out/phpDebug.js' }
  }

  dap.configurations.php = {
    {
      type = 'php',
      request = 'launch',
      name = 'Listen for Xdebug',
      port = 9000
    }
  }
end

-- ======================================= Dap Section ==============================================
lvim.builtin.dap.active = true

require("user.dapui")


-- ===================================== Plugins Section ============================================
lvim.plugins = {
  "rcarriga/nvim-dap-ui",
}


-- ================================= PHP IDE Specific Section ========================================
