" Setup shell, see ':help powershell' for more info
let &shell = 'pwsh'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set shellquote= shellxquote=

lua require('settings')
lua require('maps')
lua require('plugins')
lua require('plugins_config')

lua require('utils')

let g:lazygit_floating_window_use_plenary = 1

" let g:tokyonight_style = "storm"
" let g:tokyonight_italic_functions = 0
" let g:tokyonight_italic_comments = 0
" let g:tokyonight_italic_keywords = 0
" let g:tokyonight_lualine_bold = 1
" let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]


" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:tokyonight_colors = {
"   \ 'hint': 'orange',
"   \ 'error': '#ff0000'
" \ }

" colorscheme tokyonight
colorscheme gruvbox

" Force 2 spaces per tab in most filetypes
" autocmd FileType lua setlocal shiftwidth=2
" autocmd FileType python setlocal shiftwidth=2
" autocmd FileType c setlocal shiftwidth=2
" autocmd FileType vim setlocal shiftwidth=2


" Hightlight Extra Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

set foldlevel=99
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


" Neovim GUI Version stuff
" set guifont="CaskaydiaCove NF:h13"
" let g:neovide_cursor_vfx_mode = "sonicboom"

" let s:fontsize = 12
" function! AdjustFontSize(amount)
"   let s:fontsize = s:fontsize+a:amount
"   :execute "GuiFont! CaskaydiaCove NF:h" . s:fontsize
" endfunction

" noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
" noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
" inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
" inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
"
