call plug#begin('~/.config/nvim/plugged')

" 文件树
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" 主题
Plug 'shaunsingh/nord.nvim'
Plug 'lukas-reineke/headlines.nvim'

" vim-airline 底部状态栏优化
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

" 代码补全
Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'OmniSharp/omnisharp-vim'

"可视化缩进
Plug 'Yggdroot/indentLine'

"语法高亮插件
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"固定类及方法于顶端
Plug 'nvim-treesitter/nvim-treesitter-context'

"自动括号
Plug 'jiangmiao/auto-pairs'


" 注释插件
Plug 'joom/vim-commentary'

" 模糊搜索
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" 启动页面
Plug 'mhinz/vim-startify'

call plug#end()

" Startify
"起始页显示的列表长度
let g:startify_files_number = 4
"自动加载session
let g:startify_session_autoload = 1
let g:startify_custom_header = [
            \ '',
            \ '',
            \ ' ░▒▓████████▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓██████▓▒░  ░▒▓███████▓▒░  ░▒▓███████▓▒░  ░▒▓████████▓▒░ ░▒▓███████▓▒░  ', 
            \ '    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ', 
            \ '    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ', 
            \ '    ░▒▓█▓▒░     ░▒▓███████▓▒░   ░▒▓██████▓▒░        ░▒▓████████▓▒░ ░▒▓████████▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓██████▓▒░   ░▒▓███████▓▒░  ', 
            \ '    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░           ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ', 
            \ '    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░           ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ', 
            \ '    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░           ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓███████▓▒░  ░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ', 
            \ '',
            \ ' Your limitation is only your imagination.',
            \ '',
            \ '']


let g:startify_custom_footer = [
            \ '',
            \ ' "The only way to do great work is to love what you do." - Steve Jobs       ',
            \]

" 设置窗口大小
let g:startify_window_top = 30
let g:startify_window_bottom = 30
let g:startify_window_left = 100
let g:startify_window_right = 100

" 主题
colorscheme nord
" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false
let g:nord_uniform_diff_background = v:true
let g:nord_bold = v:false


"AirLine
" let g:airline#extensions#tabline#enabled = 1   "显示窗口tab和bufferlet
" let g:airline_theme = 'everforest'

" LightLine
let g:lightline = {}
let g:lightline.colorscheme = 'wombat'

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



"设置分屏打开文件默认在右边
set splitright

"******************auto format设置***************
command! Format :call Format()
fun Format()
    exec "w"
    if &filetype == 'python'
        exec "!python3 -m black %"
    endif
    exec "e!"
endfunc
autocmd BufWritePre *.py call Format()

set autoread  "当vim打开的文件变化时,自动载入,因为black会修改python文件


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
set textwidth=10001

"************缩进设置***************
" 自动套用上一行的缩进方式
" set autoindent
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

"------------------- python 文件设置--------------------
" 开启语法高亮
let python_highlight_all=1
" 设定tab的格数为4
au Filetype python set tabstop=4
" 设置编辑模式下tab的宽度
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=10000
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

set mouse=""
set mousehide


let g:OmniSharp_server_use_net6 = 1

" 设置背景为透明
highlight Normal guibg=NONE
highlight Normal ctermbg=NONE
highlight NonText guibg=NONE
highlight NonText guibg=NONE ctermbg=none
highlight FloatBorder guibg=NONE ctermbg=NONE


" 设置Telescope快捷键
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" 设置Nvimtree快捷键
nnoremap <leader>cc <cmd>NvimTreeToggle<cr>
lua << EOF
require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
EOF

lua << EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
 -- same as `override` but specifically for operating system
 -- takes effect when `strict` is true
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}
EOF

lua << EOF
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
EOF

lua << EOF
require("headlines").setup({
    markdown = {
        headline_highlights = {
            "Headline1",
            "Headline2",
            "Headline3",
            "Headline4",
            "Headline5",
            "Headline6",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
})
EOF
