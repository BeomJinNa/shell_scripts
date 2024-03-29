let g:user42 = 'bena'
let g:mail42 = 'bena@student.42seoul.kr'
set nu
set ru
set ai
set si
syntax on
set clipboard=unnamed
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set smarttab
"set expandtab (Tab to Space)

nmap <F3> :w<CR>:! norminette %<CR>
nmap <F4> :NvimTreeToggle<CR>
nmap <F5> :LspStop<CR>
nmap <F6> :LspStart<CR>
command! LspStop lua vim.lsp.stop_client(vim.lsp.get_active_clients())

highlight Identifier ctermfg=gray
highlight Function ctermfg=white
highlight Macro ctermfg=magenta
highlight ExtraWhitespace ctermbg=gray guibg=gray
match ExtraWhitespace /\s\+$/
"set viminfo='20,<1000                   "복사 줄 제한 풀기

call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'				"LSP Module
Plug 'hrsh7th/nvim-compe'					"Auto Complete
Plug 'psf/black', {'branch': 'main'}		"Python Formatter
Plug '42Paris/42header'						"42header
Plug 'nvim-tree/nvim-tree.lua'				"nvim-tree
Plug 'nvim-tree/nvim-web-devicons'			"nvim-tree
Plug 'glepnir/lspsaga.nvim'					"LSP enhancer
Plug 'rhysd/vim-clang-format'				"clang-formatter
call plug#end()

lua require'mylspconfig'
luafile ~/.config/nvim/lua/nvim-tree-config.lua

source ~/.config/nvim/nvim-compe.vim

let g:clang_format#command = $HOME . '/bin/clang-format/bin/clang-format'
let g:clang_format_format_on_save = 0
