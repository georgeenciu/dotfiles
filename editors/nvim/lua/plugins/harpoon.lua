local function add_file()
  require("harpoon.mark").add_file()
end

local function toggle_quick_menu()
  require("harpoon.ui").toggle_quick_menu()
end

local function nav_next()
  require("harpoon.ui").nav_next()
end

local function nav_prev()
  require("harpoon.ui").nav_prev()
end

return {
  "ThePrimeagen/harpoon",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  keys = {
    { "<leader>aa", add_file, desc = "Harpoon - Add Mark" },
    { "<leader>af", toggle_quick_menu, desc = "Harpoon - Show" },
    { "<leader>an", nav_next, desc = "Harpoon - Next" },
    { "<leader>aN", nav_prev, desc = "Harpoon - Prev" },
  },
}
