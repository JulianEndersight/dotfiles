return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
                ensure_installed = {
                    "asm", "awk", "bash", "c", "css", "csv",
                    "gitconfig", "gitignore", "glsl", "hlsl",
                    "html", "javascript", "json", "julia", "json5", "lua",
                    "luadoc", "lua_patterns", "markdown", "markdown_inline",
                    "odin", "query", "vim", "vimdoc", "zig", "rust", "odin"
                },
                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                }
            })
        end,
    },
}
