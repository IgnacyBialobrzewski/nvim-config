local NVIM_PATH = os.getenv("NVIM_PATH")

vim.api.nvim_create_user_command("Cfg", "cd " .. NVIM_PATH, {})
vim.api.nvim_create_user_command("Config", "cd" .. NVIM_PATH, {})
