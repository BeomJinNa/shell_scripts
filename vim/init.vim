set number							"줄 번호 표시
set ruler								"커서 위치 표시
set ai									"자동 들여쓰기
set si									"스마트 인덴트
syntax on								"문법 하이라이트
set clipboard=unnamed		"클립보드 사용
set mouse=a							"마우스 사용
set tabstop=2						"탭 간격
set softtabstop=2				"탭 간격
set shiftwidth=2				"들여쓰기 간격
"set smarttab						"스마트 탭
"set expandtab					"탭을 스페이스로
"set viminfo='20,<1000	"복사 줄 제한 풀기

" 색상 설정
highlight Identifier ctermfg=gray
highlight Function ctermfg=white
highlight Macro ctermfg=magenta
highlight ExtraWhitespace ctermbg=gray guibg=gray
match ExtraWhitespace /\s\+$/


nmap <F4> :NvimTreeToggle<CR>
nmap <F5> :LspStop<CR>
nmap <F6> :LspStart<CR>
command! LspStop lua vim.lsp.stop_client(vim.lsp.get_active_clients())

" 노말 모드로 돌아갈 때 영어로 변경 (im-select 설치 필요, MacOS용)
autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC

" 플러그인 설치 목록 (Plug.vim)
call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'														"LSP Module
Plug 'hrsh7th/nvim-compe'																"Auto Complete
Plug 'psf/black', {'branch': 'main'}										"Python Formatter
Plug 'nvim-tree/nvim-tree.lua'													"nvim-tree
Plug 'nvim-tree/nvim-web-devicons'											"nvim-tree
Plug 'glepnir/lspsaga.nvim'															"LSP enhancer
Plug 'rhysd/vim-clang-format'														"clang-formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }	"JS Formatter
Plug 'mattn/emmet-vim'																	"Emmet
call plug#end()

" 플러그인 설정
lua require'mylspconfig'
luafile ~/.config/nvim/lua/nvim-tree-config.lua
source ~/.config/nvim/nvim-compe.vim
let g:clang_format_format_on_save = 0

" 파일 확장자별 템플릿 설정
augroup html_template
    autocmd!
    autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html_template.html
augroup END
