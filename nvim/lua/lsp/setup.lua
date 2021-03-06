local lsp_installer = require "nvim-lsp-installer"

-- language server list
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: language value: config file }
local servers = {
  sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
  tsserver = require "lsp.typescript",
  omnisharp = require "lsp.csharp",
}

-- install LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = servers[server.name]
  if opts then
    opts.on_attach = function(_, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      require('keybindings').maplsp(buf_set_keymap)
    end
    opts.flags = {
      debounce_text_changes = 150,
    }
    server:setup(opts)
  end
end)
