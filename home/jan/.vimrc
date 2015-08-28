source /etc/vimrc

"With this setting, you can copy and pase (yy/p)
"between terminals instead of using ("+yy) and ("+p)
set clipboard=unnamedplus

"
" Entries from Vundle
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
"Show a bar that contains a overview overclasses/functions
"My own plugin has support for bro script
"Plugin 'majutsushi/tagbar'
Plugin 'jzipfler/tagbar'
Plugin 'marijnh/tern_for_vim' "Plugin for Tern-based JavaScript editing support
Plugin 'scrooloose/nerdtree' "Filemanager for Vim
Plugin 'a.vim' "Switch from C to H files and vice versa, e.g: ':A'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim' "Use :CtrlP to find files, tags and other stuff
Plugin 'FelikZ/ctrlp-py-matcher'  "Use an faster matcher for CtrlP.
Plugin 'ervandew/supertab' "Complete many things with <TAB>
Plugin 'tpope/vim-surround' "Surround quoting/parentheses easily
Plugin 'tpope/vim-eunuch' "Provide things like :Rename :Mkdir :Locate :SudoWrite and more
Plugin 'rking/ag.vim' "Use 'ag' to search in files with :Ag
Plugin 'Chiel92/vim-autoformat' "Formatter for multiple programming languages
"Plugin 'rhysd/vim-clang-format' "Format your C/C++ code
Plugin 'atelierbram/vim-colors_atelier-schemes' "Color schema for vim
Plugin 'justincampbell/vim-railscasts' "Color schema for vim
Plugin 'queyenth/oxeded.vim' "Color schema for vim
Plugin 'chriskempson/vim-tomorrow-theme' "Color schema for vim
Plugin 'effkay/argonaut.vim' "Color schema for vim
Plugin 'cdmedia/itg_flat_vim' "Color schema for vim
Plugin 'altercation/vim-colors-solarized' "Color schema for vim
Plugin 'jzipfler/grunt.vim' "Use :Grunt to 'build' a JS project
Plugin 'SirVer/ultisnips' "Complete for with snippets to a complete for loop, etc...
Plugin 'honza/vim-snippets' "Dependency to ultisnips
Plugin 'PotatoesMaster/i3-vim-syntax' "Syntax highlighting for the i3 config
Plugin 'ntpeters/vim-better-whitespace' "Show leading and trailing whitespaces
Plugin 'rhysd/clever-f.vim' "Use f/F/t/T{char} to search for {char} and search for the next with f/F/t/T instead of ;/,
Plugin 'justinmk/vim-syntax-extra' "Enhanced highlighting support for C/Bison/Flex


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" Eigene Einträge...
" ###############################################################################################
"

"Enables the mouse (scrolling) for all vim modes:
set mouse=a

"Blendet links die Zeilennummern ein"
set number

"Schalte Syntaxhighlighting ein
syntax on

"Einrueckung der vorherigen Zeile erhalten"
set autoindent

"Disable autoindent an other things when pasting stuff
"set paste

"Zeigt die Kommandos im Kommandmodus an."
set showcmd

" ":autocmd" ":shell" ":write" in Konf.dateien im akt. Verz. NICHT erlaubt (DO!)
" sowie Map-Kommandos anzeigen (insbesondere falls 'exrc' gesetzt!)
" set secure

" Editmodus-Anzeige in Statuszeile links unten (DO!)
" (-- EINFÜGEN --, -- VISUELL ... --, -- ERSETZEN --)
set showmode

" Koordinatenanzeige in Statuszeile aktivieren (DO!)
" (SET 'paste' -> 'noruler')
set ruler

" Bei 'wrap' Zeilen statt im Wort am Zl.ende nur an "schönen" Stellen umbrechen
" (nur Darstellung, es wird NICHT wirklich umgebrochen!)
set linebreak

" Auswahl der Zeichen, bei denen mit "'linbreak' bei 'wrap' umgebrochen wird
" (Leerzeichen schützen: "\ "!)
set breakat=\ ^I!@*-+;:,./?"

" Während Eingabe eines Suchmusters bereits suchen (inkrementell)
" Alle zu einem Suchmuster passenden Textstücke markieren (highlight)
" (:nohlsearch 'invhls' schaltet Markierungen, 'invhls' invertiert sie!)
" :highlight IncSearch term=reverse cterm=reverse
" :highlight Search    term=reverse ctermfg=0 ctermbg=3
set incsearch
set hlsearch

" GROSS/kleinschreibung bei Suche NICHT beachten
" (ABSCHALTEN mit \C, EINSCHALTEN mit \c im Suchmuster = case!)
" ('smartcase' -> außer Grossbuchstabe kommt im Suchmuster vor, z.B.
"  SmartCase, SMARTcase, smartCASE, SmArTcAsE, sMaRtCaSe, smartcase)
set ignorecase
set smartcase


" Smartindenting --> Define TAB == 2 spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Wrap text to the next line if more than 72 characters are in one line.
"set textwidth=72
"set formatoptions+=t

" Open splits on the right/bottom which feels more natural...
set splitbelow
set splitright


" Configuration for airline plugin
" Makes it visible
set laststatus=2
" Switch fast from 'Insert' to 'Normal' mode in the airline
" but also set ttimeoutlen, because this will set the timeout
" period for key codes, like this for vim-sourround.
set timeoutlen=1000 ttimeoutlen=0
":let g:airline_theme='light'
":let g:airline_theme='powerlineish'
":let g:airline_theme='solarized'
:let g:airline_theme='wombat'
":let g:airline_theme='papercolor'
"Show tab info in airline style
let g:airline#extensions#tabline#enabled = 1
" Enable the powerline fonts which are needed to show some character correctly
" A GitHub repo with some of these fonts is: https://github.com/powerline/fonts
let g:airline_powerline_fonts = 1
" Configure to not show the 'y' (which contains the file encoding type)
" and 'warning' (which contains the warning messages from syntastic) section 
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z']
      \ ]
" truncate long branch names to a fixed length > X
let g:airline#extensions#branch#displayed_head_limit = 10
" configure how numbers are displayed in tab mode. >
"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
"""""""
"When enabled, numbers will be displayed in the tabline and mappings will be
"exposed to allow you to select a buffer directly.  Up to 9 mappings will be
"exposed.
let g:airline#extensions#tabline#buffer_idx_mode = 1
" nmap <leader>1 <Plug>AirlineSelectTab1

" Set colorscheme
"colorscheme jellybeans
"colorscheme codeschool
"colorscheme oxeded
"colorscheme railscasts "Looks good
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow
"colorscheme itg_flat

"let g:hybrid_use_Xresources = 1 "For the hybrid theme
"colorscheme hybrid

" Settings for the Solarized theme
syntax enable
set background=dark
"This is only needed if the solarized color definitions are not used in
"the.Xresources/.Xdefaults file.
"let g:solarized_termcolors=256
colorscheme solarized

" Some settings from the ArchWiki for the Taglist Plugin
"let Tlist_Compact_Format = 1
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Close_On_Select = 1
"nnoremap <C-l> :TlistToggle<CR>

"Settings for CtrlP
"Use the pymatcher which is (as mentioned on webpage) 22x faster
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"Use ag to loog for the files.
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup
      \ --ignore "**/*.pyc"
      \ --ignore "**/*~"
      \ --ignore "**/*.swp"
      \ -g ""'

" Settings for the NerdTree
nnoremap <F2> :NERDTreeToggle<CR>

" Settings for the Tagbar Plugin
let g:tagbar_autofocus = 1
" Opens the Tagbar, f - Jump to it if when opening
" j - Jump to Tagbar window if already open
" c - close Tagbar after selection
nnoremap <F3> :TagbarOpen fjc<CR>
" nnoremap <C-l> :TagbarToggle<CR>

"Open a 'find file/tag' window
nnoremap <F4> :CtrlP<CR>

"Formatting the file automaticly (like gofmt)
nnoremap <F5> :Autoformat<CR>

" Settings for BufExplorer
nnoremap <F6> :BufExplorer<CR>
"nnoremap <F6> :BufExplorerVerticalSplit<CR>

"Settings for synastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
"let b:syntastic_mode= "active"

nnoremap <F9> :SyntasticCheck<CR>

"
" YouCompleteMe options
"

" Diagnostic of ycm, only for C family languages
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_error_symbol = "✗"
let g:ycm_warning_symbol = "⚠"
let g:ycm_enable_diagnostic_signs = 1 "default 1
let g:ycm_enable_diagnostic_highlighting = 0 "default 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
" Removed the following entries from blacklist dic
"     \ 'markdown' : 1,
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:ycm_key_invoke_completion = '<C-Space>'

let g:ycm_autoclose_preview_window_after_insertion = 1

nnoremap <F10> :YcmForceCompileAndDiagnostics <CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Fix for YouCompleteMe from
"https://github.com/Valloric/YouCompleteMe/issues/420
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
