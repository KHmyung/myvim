
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Source-Explorer-srcexpl.vim'
Plugin 'SrcExpl'                                " 커서가 지시하는변수들의 정보를 보여줌
Plugin 'taglist.vim'                            " ctags를 사용하여소스코드 파일에서 함수, 전역 변수 리스트를 확인할 수 있는 강력한 사이드바를 제공
Plugin 'AutoComplPop'                           " 자동완성플러긴
Plugin 'snipMate'                               " for, while과같은 예약어를 입력할 경우 snip code를 자동으로 제공해 준다. ~/.vim/snippets 에 제공 기준이 있음.
Plugin 'scrooloose/syntastic'									" 문법 체크

Plugin 'nanotech/jellybeans.vim'                " vim theme
Plugin 'NLKNguyen/papercolor-theme'             " vim theme
Plugin 'vim-airline/vim-airline'								" vim 내부에서 상태 정보 보이기
Plugin 'vim-airline/vim-airline-themes'

Plugin 'nathanaelkane/vim-indent-guides'				" vim indent guide
Plugin 'majutsushi/tagbar'

call vundle#end()

" for indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1


" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" Key Settings
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>



set nu
set nocompatible
set autoindent
set sm
set title
set hlsearch
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cindent
set nowrapscan								" 검색할 때, 끝에서 처음으로 안돌아감
set nobackup									" 백업파일 안만들기
set noswapfile
set visualbell
set ruler
set fencs=ucs-bom,utf-8,euc-kr.latin1
set fileencoding=utf-8
set tenc=utf-8                 " 터미널 인코딩
set encoding=utf-8							" 한글 인코딩
set expandtab                  " 탭대신 스페이스
set hlsearch                   " 검색어 강조, set hls 도 가능
set ignorecase                 " 검색시 대소문자 무시, set ic 도 가능
set lbr
set incsearch                  " 키워드 입력시 점진적 검색
set cursorline
set laststatus=2
set background=dark  														  " 하이라이팅 lihgt / dark
set backspace=eol,start,indent 									  "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     														  " vi 편집기록 기억갯수 .viminfo에 기록
set mouse=a          														  " vim에서 마우스 사용
set t_Co=256         														  " 색 조정
set clipboard=unnamedplus,autoselect
set clipboard=unnamed
set paste

if has('cscope')
	set csprg=/usr/bin/cscope
	set csto=0
	set cscopetag
	set nocsverb
	if filereadable("./cscope.out")
		cs add ./cscope.out
	endif
	set csverb
endif

syntax on 					 														  " 구문강조 사용
filetype indent on   														  " 파일 종류에 따른 구문강조
highlight Comment term=bold cterm=bold ctermfg=4  " 코멘트 하이라이트



set background=dark
colorscheme jellybeans
