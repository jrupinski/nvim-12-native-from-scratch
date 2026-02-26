require('configs')
require('keymaps')
require('autocmds')
require('theme')

--  Uncomment the following block and add your plugins to `lua/plugins/*.lua` to get going.
-- AI slop to recursively import plugins separately
-- Native equivalent of { import = 'custom.plugins' }
local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"

-- Check if the directory exists
if vim.fn.isdirectory(plugin_dir) == 1 then
    -- Get list of all .lua files in that directory
    local files = vim.fn.readdir(plugin_dir)
    for _, file in ipairs(files) do
        if file:match("%.lua$") then
            -- Remove the .lua extension to get the module name
            local module = "plugins." .. file:gsub("%.lua$", "")
            require(module)
        end
    end
end
