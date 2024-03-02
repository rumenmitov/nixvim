{pkgs, ...}:
{
    plugins = {

        # Dashboard
        alpha = {
            enable = true;
            layout = [{
                opts = {
                    hl = "Type";
                    position = "center";
                };
                type = "text";
                val = [
                    "                                                  "
                    "                                                  "
                    "              +-----------------+                 "
                    "              |                 |                 "
                    "              |  1. EAT    🌭   |                 "
                    "              |                 |                 "
                    "              |  2. SLEEP  😴   |                 "
                    "              |                 |                 "
                    "              |  3. CODE   🖥️   |                 "
                    "              |                 |                 "
                    "              |  4. REPEAT 🔁   |                 "
                    "              |                 |                 "
                    "              +-----------------+                 "
                    "                                                  "
                    "     ▄▄▄▄▄▄   ▄▄   ▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄    ▄     "
                    "    █   ▄  █ █  █ █  █  █▄█  █       █  █  █ █    "
                    "    █  █ █ █ █  █ █  █       █    ▄▄▄█   █▄█ █    "
                    "    █   █▄▄█▄█  █▄█  █       █   █▄▄▄█       █    "
                    "    █    ▄▄  █       █       █    ▄▄▄█  ▄    █    "
                    "    █   █  █ █       █ ██▄██ █   █▄▄▄█ █ █   █    "
                    "    █▄▄▄█  █▄█▄▄▄▄▄▄▄█▄█   █▄█▄▄▄▄▄▄▄█▄█  █▄▄█    "
                    "                                                  "
                    "                                                  "
                ];
            }];
        };

        # Fuzzy finder
        telescope.enable = true;

        # Version control
        undotree.enable = true;
        gitgutter.enable = true;

        # Status line
        lualine.enable = true;
    
        # Notifications
        notify.enable = true;

        # Syntax highlighting
        treesitter = {
            enable = true;
            ensureInstalled = "all";

        };

        treesitter-context.enable = true;

        # Autocompletion
        cmp-buffer.enable = true;
        cmp-nvim-lsp.enable = true;
        cmp-nvim-lsp-signature-help.enable = true;
        cmp-path.enable = true;
        luasnip.enable = true;

        lspkind = {
            enable = true;
            cmp.enable = true;
        };

        nvim-cmp = {
            enable = true;
            autoEnableSources = true;
            sources = [
                { name = "nvim_lsp"; }
                { name = "path"; }
                { name = "buffer"; }
                { name = "luasnip"; }
            ];

            snippet.expand = "luasnip";

            mapping = {
                "<C-n>" = {
                    action = "cmp.mapping.select_next_item()";
                    modes = [ "i" "s" ];
                };

                "<C-p>" = {
                    action = "cmp.mapping.select_prev_item()";
                    modes = [ "i" "s" ];
                };

                "<C-y>" = {
                    action = "cmp.mapping.confirm({ select = true })";
                    modes = [ "i" "s" ];
                };

            };
        };

        lsp = {
            enable = true;
            servers = {
                bashls.enable = true;
                ccls.enable = true;
                clangd.enable = true;
                cssls.enable = true;
                dartls.enable = true;
                dockerls.enable = true;
                emmet_ls.enable = true;
                eslint.enable = true;
                gopls.enable = true;
                html.enable = true;
                htmx.enable = true;
                jsonls.enable = true;
                nixd.enable = true;
                pylsp.enable = true;
                tsserver.enable = true;
                rust-analyzer = {
                    enable = true;
                    installCargo = true;
                    installRustc = true;
                };
            };
            
            keymaps = {
                lspBuf = {
                    K = "hover";
                    gd = "definition";
                    gD = "declaration";
                    gi = "implementation";
                    gt = "type_definition";
                    "<leader>gf" = "format";
                    "<leader>gr" = "rename";
                    "<leader>fx" = "code_action";
                };

                diagnostic = {
                    "<leader>d" = "open_float";
                };
            };
        };

        cmp_luasnip.enable = true;
        emmet.enable = true;

        # Comments
        todo-comments.enable = true;

        # Brackets
        surround.enable = true;
        nvim-autopairs.enable = true;

        # Markdown
        markdown-preview.enable = true;

        # Notes
        neorg.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
        lsp-zero-nvim
        nvim-lspconfig
        neoscroll-nvim
        nvim-highlight-colors
        vim-commentary
        vim-table-mode
        zen-mode-nvim
    ];
}
