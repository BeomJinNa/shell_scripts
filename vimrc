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

nmap <F3> :w<CR> :! norminette %<CR>

highlight Identifier ctermfg=gray
highlight Function ctermfg=white
highlight Macro ctermfg=magenta
highlight ExtraWhitespace ctermbg=gray guibg=gray
match ExtraWhitespace /\s\+$/
"set viminfo='20,<1000                   "복사 줄 제한 풀기

call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
call plug#end()

lua require'mylspconfig'

" nvim-compe 설정
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:false
let g:compe.source.spell = v:false
let g:compe.source.tags = v:true
let g:compe.source.snippets_nvim = v:false
let g:compe.source.tabnine = v:false

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
