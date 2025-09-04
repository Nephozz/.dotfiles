return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function ()
        require("nvim-autopairs").setup({
            disable_filetype = { "TelescopePrompt", "vim" },
            enable_check_bracket_line = true,
            ignored_next_char = "[%w%.]",
        })

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
}
