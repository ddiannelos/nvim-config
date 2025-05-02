
return {
    "toppair/peek.nvim",
    event = { 'VeryLazy' },
    build = "deno task --quiet build:fast",
    config = function()
        require('peek').setup({ filetype= {'markdown', 'conf'}, app = "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" })
        vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
        vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end
}
