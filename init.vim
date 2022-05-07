call plug#begin('~/.config/nvim/plugged')

" 文件树
Plug 'scrooloose/nerdtree'

" 主题
Plug 'morhetz/gruvbox'

" vim-airline 底部状态栏优化
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"可视化缩进
Plug 'Yggdroot/indentLine'

"语法高亮插件
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"自动括号
Plug 'jiangmiao/auto-pairs'


" 注释插件
Plug 'joom/vim-commentary'

call plug#end()



" 主题
colorscheme gruvbox
set background=dark
"set background=dark " 或者 set background=light


"AirLine
let g:airline#extensions#tabline#enabled = 1   "显示窗口tab和bufferlet
let g:airline_theme='bubblegum'

"可视化锁进
let g:indent_guides_guide_size = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 1  " 从第一层开始可视化显示缩进

"键位映射
"
" ctrl+s 保存 	Insert mode
" linux默认情况下ctrl+s是锁定terminal,需要ctrl+q解锁.在.bashrc 设置 stty-ixon可以禁用
imap <D-s> <Esc>:w!<CR>i
imap <c-s> <Esc>:w!<CR>i
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>
set cursorline " 突出显示当前行



" nerdtree配置
" -- 为打开或关闭nerdtree设置一个快捷键
nnoremap <F3> :NERDTreeToggle<CR>
" -- 自动开启nerdtree
autocmd vimenter * NERDTree 
" -- 设定nerdtree的窗口大小
let g:NERDTreeWinSize = 24
" -- 打开nerdtree时自动显示bookmarks
let NERDTreeShowBookmarks=1
" -- 打开nvim时若没有任何文件，则自动打开nerdtree
" autocmd vimenter * if !argc()|NERDTree|endif
" -- 当nerdtree为唯一视窗时，自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" -- 每次打开一个新的标签，都默认打开nerdtree
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" -- 设置树的图标,以区分已打开或未打开
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" -- 是否显示行号
let g:NERDTreeShowLineNumbers=0
" -- 是否显示隐藏文件
let g:NERDTreeHidden=0
" -- 让nerdtree更漂亮
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" -- 过滤不显示的文件
let g:NERDTreeIgnore=['\.pyc','\~$','\.swp','^__pycache__$','^mongo$','^env$','^venv$']
" -- nerdtree的git文件状设置
Ret g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" -- 为不同的文件进行不同的高亮上色
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

"设置分屏打开文件默认在右边
set splitright

"******************auto format设置***************
command! Format :call Format()
command! Fmt :call Format()
func! Format()
   if &filetype == 'python'
       exec "!python3 -m black %"
   endif
   exec "e!"
endfunc

set autoread  "当vim打开的文件变化时,自动载入,因为black会修改python文件
autocmd BufWrite *.py call Format()


" 语法高亮支持
syntax on

"************搜索设置***************
" 搜索的时候不区分大小写,是set ignorecase缩写.如果你想启用,输入:set noic(noignorecase缩写)
set ic
" 搜索的时候随字符高亮
set hlsearch

"************编码设置***************
" 设置编码格式为utf-8
set encoding=utf-8
" 自动判断编码时,依次尝试下编码
set fileencodings=utf-8,ucs-bom,GB2312,big5

"************行和列设置***************
" 显示行横线
set cursorline
" 显示行号
set nu
set relativenumber
" 取消自动换行
set textwidth=1000

"************缩进设置***************
" 自动套用上一行的缩进方式
set autoindent
" 开智能缩进
set smartindent
" 光标移动到buffer的顶部和底部保持4行继续
set scrolloff=4
" 当光标移动到一个括号时,高亮显示对应的另一个括号
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"------------------- python 文件设置--------------------
" 开启语法高亮
let python_highlight_all=1
" 设定tab的格数为4
au Filetype python set tabstop=4
" 设置编辑模式下tab的宽度
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99
