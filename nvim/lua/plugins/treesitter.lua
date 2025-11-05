return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                ensure_installed = { "bash", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
                --[[ensure_installed = {
                    "asm", "awk", "bash", "c", "css", "csv",
                    "gitconfig", "gitignore", "glsl", "hlsl",
                    "html", "javascript", "json", "julia", "json5", "lua",
                    "luadoc", "lua_patterns", "markdown", "markdown_inline",
                    "odin", "query", "vim", "vimdoc", "zig", "rust", "odin"
                },
                --]]

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false,
                }
            })
        end,
    },
}
