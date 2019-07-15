" Select your Leader key
let mapleader = ","

" active backspace key
set backspace=2 " make backspace work like most other apps

" vimrc includes this additional color scheme
colorscheme jellybeans
set nu
syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

" colorscheme desert
" Plug management
call plug#begin()

"youcompleteme
Plug 'Valloric/YouCompleteMe'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
" color theme
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
"murderer
"Plug 'justmao945/vim-clang'
Plug 'octol/vim-cpp-enhanced-highlight'
"git
Plug 'airblade/vim-gitgutter'
"tab adjustment
Plug 'tpope/vim-sleuth'
"char->word->paragraphs
Plug 'terryma/vim-expand-region'
"tagbar
Plug 'xolox/vim-misc'
"c++ lint
Plug 'w0rp/ale'

" switch between source file and header file
Plug 'vim-scripts/a.vim'
if executable("ctags")
    Plug 'majutsushi/tagbar'
    nnoremap <Leader>o :TagbarOpenAutoClose<CR>

    let g:tagbar_singleclick = 1
    let g:tagbar_sort = 0
    let g:tagbar_type_make = {
                \ 'kinds':[
                    \ 'm:macros',
                    \ 't:targets'
                \ ]
    \}


  ""  " Add support for markdown files in tagbar.
  ""  let g:tagbar_type_pandoc = {
  ""      \ 'ctagstype': 'markdown',
  ""      \ 'ctagsbin' : '~/.congig/nvim/markdown2ctags.py',
  ""      \ 'ctagsargs' : '-f - --sort=yes',
  ""      \ 'kinds' : [
  ""          \ 's:sections',
  ""          \ 'i:images'
  ""      \ ],
  ""      \ 'sro' : '|',
  ""      \ 'kind2scope' : {
  ""          \ 's' : 'section',
  ""      \ },
  ""      \ 'sort': 0,
  ""  \ }

    let g:tagbar_type_tex = {
        \ 'ctagstype' : 'latex',
        \ 'kinds' : [
        \ 'c:chapters',
        \ 's:sections',
        \ 'u:subsections',
        \ 'b:subsubsections',
        \ 'p:parts',
        \ 'P:paragraphs',
        \ 'G:subparagraphs',
        \ 'i:includes', 
        \ 'l:labels',
        \ 'b:bibitems',
        \ ],
     \ 'sort' : 0
    \ }


    Plug 'xolox/vim-easytags'
    let g:easytags_async = 1
    let g:easytags_events = ['BufWritePost','BufReadPost']
    let g:easytags_on_cursorhold = 0

    " For tags in working directory
    let g:easytags_dynamic_files = 2
    set tags = "./tags"
    set cpo += "d"

endif


"Plug 'sheerun/vim-polyglot'
" Load other plugins
" clang-format
Plug 'rhysd/vim-clang-format'
call plug#end()

" Define maps for your plugins
"nnoremap <Leader>o :CtrlP<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Youcompleteme
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Youcompleteme configuration
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
"set tags+=/root/ceph_related/ceph/src/tags
inoremap <leader>f <C-x><C-o>
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""""""""
"" Status line
"""""

" Show mode in statusbar, not separately.
set noshowmode
" Always show window statuses, even if there's only one.
set laststatus=2

" Show the line and column number of the cursor position.
set ruler

" Show the size of block one selected in visual mode.
set showcmd


"let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
"let g:airline_theme='jellybeans'
"let g:airline_section_x = '%{PencilMode()}'

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1

" bufferline
let g:bufferline_show_bufnr = 0
let g:bufferline_rotate = 1
let g:bufferline_echo = 0
"""""""""""

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Colors and Fonts
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Enable syntax highlighting.
if has('syntax')
  syntax enable
endif

 " Enable syntax highlighting
  " Set utf8 as standard encoding and en_US as the standard language
 set encoding=utf8

 " Set 7 lines to the cursor - when moving vertically using j/k
set so=7
 "Always show current position
 set ruler
 " Height of the command bar
 set cmdheight=2
" Sets how many lines of history VIM has to remember
" TODO - error on first start
" set guifont=Monospace\ 13
set t_Co=256


" Force utf-8 encoding in GVim
if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

" Highlight line under cursor. It helps with navigation.
set cursorline

" Keep 8 lines above or below the cursor when scrolling.
set scrolloff=8

" Keep 15 columns next to the cursor when scrolling horizontally.
set sidescroll=1
set sidescrolloff=15

" Set minimum window size to 79x5.
set winwidth=79
set winheight=5
set winminheight=5

" Disable any annoying beeps on errors.
set noerrorbells
set visualbell

 set t_vb=
 set tm=500
 " Add a bit extra margin to the left
 set foldcolumn=1
" Don't display the intro message on starting Vim.
set shortmess+=I

" When 'wrap' is on, display last line even if it doesn't fit.
set display+=lastline

" Wrap lines by default
set wrap linebreak
set showbreak=" "


"set list          " Display unprintable characters f12 - switches
"set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
" Set default whitespace characters when using `:set list`
"set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

 " Don't redraw while executing macros (good performance config)
 set lazyredraw
 " Show matching brackets when text indicator is over them
 set showmatch
 " How many tenths of a second to blink when matching brackets
 set mat=2

""""""""""""""
" Indent
""

 " 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
 " Linebreak on 500 characters
set smartindent "Smart indent
" Autoindent when starting new line, or using `o` or `O`.
set autoindent
" Use 'shiftwidth' when using `<Tab>` in front of a line.
" By default it's used only for shift commands (`<`, `>`).
set smarttab
 " Use spaces instead of tabs
set expandtab

""""""""""""""
" Paragraphs
""
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

 """""""""""""""""""""
 " Mouse

 " In many terminal emulators the mouse works just fine, thus enable it.
 if has('mouse')
  "set mouse=a
 endif

""""""""""""" key map timeouts
"
""
" Allow for mappings including `Esc`, while preserving
" zero timeout after pressing it manually.
set ttimeout
set ttimeoutlen=100
set notimeout

""""""""""""""
" Cpp highlight
""
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

""""""""""""""
" Search
""
" Enable search highlighting.
set hlsearch

" Enable highlighted case-insensitive incremential search.
set incsearch

""""""""""""""
" Tagbar
""
nmap <F8> :TagbarToggle<CR>

"""""""""""""
" For Java
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0

""""""""""""
" C++ lint
let b:ale_linters = ['clangtidy']
let b:ale_fixers = ['clang-format', 'clangtidy', 'remove_trailing_lines', 'trim_whitespace']
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
nmap <Leader>s :ALEFix<CR>

" clang-format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
