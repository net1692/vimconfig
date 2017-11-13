#!/bin/sh

if ! test -d ~/vimconfig; then
	echo "경고: 설치를 진행하려면 ~/vimconfig 디렉토리가 존재해야 합니다."
	echo "'git clone https://github.com/net1692/vimconfig.git ~/vimconfig' 명령어를 수행하십시오"
	exit
elif test -d ~/.vim; then
	echo "경고: 설치를 진행하려면 ~/.vim 디렉토리를 삭제해야 합니다."
	exit
elif test -e ~/.vimrc; then
	echo "경고: 설치를 진행하려면 ~/.vimrc 파일을 삭제해야 합니다."
	exit
fi

echo "vundle 다운로드..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "심볼릭 링크 생성..."
ln -sfv ~/vimconfig/vimrc ~/.vimrc
ln -sfv ~/vimconfig/inputrc ~/.inputrc

echo "vundle 설치중..."
vi -c :BundleInstall -c :qa

exec bash
