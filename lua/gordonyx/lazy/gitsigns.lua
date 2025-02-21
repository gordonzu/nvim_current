--if true then return {} end

return {
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup()
  end,
}


