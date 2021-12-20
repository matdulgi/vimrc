set nobackup
set noswapfile

"ㅇ한글 깨짐 해결
set encoding=utf-8
set fileencodings=utf-8,cp949
set langmenu=utf-8
"encoding : 터미널에 출력될 때의 인코딩
"   vim이 내부적으로 문자를 표현 하는 방법
"   " - fileencoding : 파일의 인코딩 (ucs-bom, utf-8, euc-kr, latin1 순으로
"   작성)
"   " - 유닉스에서는 cp949대신 euc-kr 써야된다고 함..?
"
"ㅇ탭을 스페이스 4번으로 변환
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

"ㅇ폰트 키우기
set guifont=Fixedsys:h13:cHANGEUL
"아니 글꼴고르기로 가능하네... 여태 뭐한거지..


"ㅇVundle 설정
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim' "HTML, CSS 코드 단축입력
Plugin 'scrooloose/nerdtree' "익스플로러
Plugin 'AutoComplPop' "^p없이 자동 완성
Plugin 'taglist-plus' "열려있는 소스 클래스, 함수, 변수 정보 창. 
"Taglist는 Ctags를 사용하므로 sudo yum install ctags 설치
Plugin 'Raimondi/delimitMate' "자동 괄호 닫기
Plugin 'machakann/vim-highlightedyank' "복사한 부분 하이라이트
call vundle#end()
"ㅇemmet설정
let g:user_emmet_leader_key=','
"let g:user_emmet_leader_key='<Tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") "속도가 느림

"ㅇNerdTree설정
nmap <F3> :NERDTree<CR> 
nmap <F4> :TlistToggle<CR>


"그외 설정
set cindent "c타입 인덴트(들여쓰기)?
set mouse=a "마우스 커서 사용
set history=1000 "undo 최대 횟수
set ignorecase "찾기, 바꾸기시 대소문자 구분하지 않기
set number
