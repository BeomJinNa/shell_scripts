let g:user42 = 'bena'
let g:mail42 = 'bena@student.42seoul.kr'
set nu
set ru
set ai
set si
syntax on
set clipboard=unnamed
set mouse=a

nmap <F3> :w<CR> :! norminette %<CR>
highlight ExtraWhitespace ctermbg=gray guibg=gray
match ExtraWhitespace /\s\+$/
"set viminfo='20,<1000                   "복사 줄 제한 풀기
