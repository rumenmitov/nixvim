{
    globals.mapleader = " ";

    keymaps = [
        # General
        {
            mode = "i";
            key = "<C-c>";
            action = "<esc>";
        }

        # Copying and pasting from clipboard
        {
            mode = "n";
            key = "<S-y>";
            action = "\"+y";
        }

        {
            mode = "v";
            key = "<S-y>";
            action = "\"+y";
        }

        {
            mode = "n";
            key = "<S-p>";
            action = "\"+p";
        }

        {
            mode = "v";
            key = "<S-p>";
            action = "\"+p";
        }

        # Moving vertically
        {
            mode = "n";
            key = "<C-d>";
            action = "<C-d>zz";
        }

        {
            mode = "n";
            key = "<C-u>";
            action = "<C-u>zz";
        }

        # Searching
        {
            mode = "n";
            key = "n";
            action = "nzz";
        }

        # Code help
        {
            mode = "n";
            key = "<leader>d";
            action = ":lua vim.diagnostic.open_float()";
        }

        {
            mode = "n";
            key = "<leader>fx";
            action = ":lua vim.lsp.buf.code_action()";
        }

        # Moving lines
        {
            mode = "v";
            key = "<S-k>";
            action = ":m '<-2<CR>gv=gv";
        }

        {
            mode = "v";
            key = "<S-j>";
            action = ":m '>+1<CR>gv=gv";
        }

        # Buffers
        {
            mode = "n";
            key = "<C-p>";
            action = ":bp<CR>";
        }

        {
            mode = "n";
            key = "<C-n>";
            action = ":bn<CR>";
        }

        {
            mode = "n";
            key = "<C-q>";
            action = ":bd!<CR>";
        }

        {
            mode = "n";
            key = "<C-s>";
            action = ":up!<CR>";
        }

        # Zen mode
        {
            mode = "n";
            key = "<leader>z";
            action = ":ZenMode<CR>";
        }

        # Telescope
        {
            mode = "n";
            key = "<leader>ff";
            action = ":Telescope find_files<CR>";
        }
        
        {
            mode = "n";
            key = "<leader>fg";
            action = ":Telescope live_grep<CR>";
        }

        {
            mode = "n";
            key = "<leader>fr";
            action = ":Telescope marks<CR>";
        }

        # Undotree
        {
            mode = "n";
            key = "<leader>u";
            action = ":UndotreeToggle<CR>";
        }


    ];
}
