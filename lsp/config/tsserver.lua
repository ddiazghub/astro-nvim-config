local lsputils = require "astronvim.utils.lsp"

return {
  settings = {
    -- on_attach = function(client, bufnr)
    --   lsputils.on_attach(client, bufnr)
    --
    --   -- Add bindings which show up as group name
    --   local wk = require "which-key"
    --   wk.register({
    --     g = {
    --       s = { "<Cmd>TypescriptGoToSourceDefinition<CR>", "Go to source definition (Typescript)" },
    --     },
    --   }, { mode = "n", buffer = bufnr })
    -- end,
    capabilities = lsputils.capabilities,
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayEnumMemberValueHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayVariableTypeHints = true,
      },
    },
  },
}
