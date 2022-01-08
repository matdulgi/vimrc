"리눅스는 홈 디렉토리의 ~/.vimrc 파일을 생성하여 작성
"전체 사용자 적용하고싶으면 /etc/vimrc 수정
"vimrc를 작성하고 저장했으면 :source % 또는 :so %로 재로드


"ㅇ$VIMRUNTIME 설정
if has("unix")
"    let $VIMRUNTIME="/usr/local/share/vim/vim"
elseif has ("win32")
"    let $VIMRUNTIME="C:/Vim/vim61"
endif 

"윈도우 단축키 적용
if has("win32")
    source $VIMRUNTIME/mswin.vim
endif

"ㅇ파일 열면 이상한 파일들 생성 안되게하기
set nobackup
set noswapfile
set noundofile

"ㅇ한글 깨짐 해결
set encoding=cp949
set fileencodings=utf-8,cp949
set langmenu=utf-8
"encoding : 터미널에 출력될 때의 인코딩
"   vim이 내부적으로 문자를 표현 하는 방법
" - fileencoding : 파일의 인코딩 (ucs-bom, utf-8, euc-kr, latin1 순으로 작성)
" - 유닉스에서는 cp949대신 euc-kr 써야된다고 함..? 아닌데??
" - langmenu 안쓰니까 리눅스에서 한영키 안됐음

"ㅇ탭을 스페이스 4번으로 변환
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4 ">> <<시 shift 크기


"set guifont=Fixedsys:h13:cHANGEUL "폰트 키우기
"아니 글꼴고르기로 가능하네... 여태 뭐한거지..


"ㅇVundle 설정
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' "익스플로러
Plugin 'AutoComplPop' "^p없이 자동 완성
Plugin 'taglist-plus' "열려있는 소스 클래스, 함수, 변수 정보 창. 
"Taglist는 Ctags를 사용하므로 sudo yum install ctags 설치
"windows에서는 ctags를 PATH 경로(system32로 이동해 주어야 함)
Plugin 'Raimondi/delimitMate' "자동 괄호 닫기
Plugin 'machakann/vim-highlightedyank' "복사한 부분 하이라이트
call vundle#end()

"그외 설정
set cindent "c타입 인덴트(들여쓰기)?
set mouse=a "마우스 커서 사용
set history=1000 "undo 최대 횟수
set ignorecase "찾기, 바꾸기시 대소문자 구분하지 않기
set number
