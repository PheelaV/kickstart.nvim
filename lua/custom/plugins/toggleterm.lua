-- https://github.com/akinsho/toggleterm.nvim
return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      open_mapping = "<C-\\>",
      hide_numbers = true,
      direction = "float",
      persist_mode = true,
      auto_scroll = true,
      shade_terminals = true,
      shading_factor = 30
    },
  }
}
