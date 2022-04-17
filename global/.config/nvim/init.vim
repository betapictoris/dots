set encoding=UTF-8
set number

call plug#begin()

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'norcalli/nvim-colorizer.lua'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Plug 'davidhalter/jedi-vim'

Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ghifarit53/tokyonight-vim'

" Vim Script
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

Plug 'andweeb/presence.nvim'
Plug 'petertriho/nvim-scrollbar'

Plug 'akinsho/bufferline.nvim'

call plug#end()

" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

lua require'colorizer'.setup()

"set termguicolors
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

"colorscheme tokyonight
colorscheme catppuccin


nnoremap <leader>v <cmd>CHADopen<cr>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" bufferline
nnoremap <silent><F2> :BufferLineCycleNext<CR>
nnoremap <silent><F3> :BufferLineCyclePrev<CR>
nnoremap <silent><F4> :BufferLinePick<CR>
