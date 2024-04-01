vim.api.nvim_create_augroup("LSP", {})

-- Enable inlay hints on lsp attach.
vim.api.nvim_create_autocmd("LspAttach", {
  group = "LSP",
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)

    if client ~= nil and client.server_capabilities.inlayHintProvider or vim.bo.ft == "dart" or vim.bo.ft == "cs" then
      vim.lsp.inlay_hint.enable(0, true)
    end
  end,
})
