# Gitbook-cli 설치



## Gitbook 설치

npm 명령어로 설치하기 위해서 아래 사이트를 통해 npm을 설치해준다

https://nodejs.org/en/

Mac 사용자는 brew 명령을 통해 설치할 수 있다.

```bash
brew install node
```



npm 설치 확인을 해준다

```bash
npm --version
## 6.13.4
```



아래 명령을 터미널에 입력하여 gitbook cli를 설치한다.

```bash
npm install gitbook-cli -g
gitbook install
```



## Gitbook 작성하기

작업을 진행할 디렉토리에서 아래 명령어로 gitbook 기본파일들을 생성해준다

```bash
gitbook init
```

`README.md` 와 `SUMMARY.md` 파일이 기본적으로 생성되는데

`SUMMARY.md` : 이 파일을 수정하여 인덱스 및 목차를 구성할 수 있다.



```bash
gitbook build
```

작성된 markdown 파일들을 html 형식을 변환하여 `_book` 폴더안에 생성해준다.



```bash
gitbook serve
```

로컬에서 gitbook을 브라우저 `http://localhost:4000` 를 통해 바로 조회가 가능하다



## GitHub 배포하기

GitHub에 접속하여 새로 repository를 생성한다

gitbook 폴더에서 아래와 같이 터미널에서 실행해준다.

`gh-pages` 로 브랜치를 연결해야만 정상적으로 동작하는점 참고

```bash
git init
git remote add origin [생성한 레포]
git checkout -b gh-pages 
```

_book에 생성된 html 및 파일들을 현재 디렉토리로 복사한다

```bash
cp -R _book/* .
```

node_modules 폴더와 _book 폴더를 지워준다

```bash
git clean -fx node_modules
git clean -fx _book
```

```bash
git add -A
git commit -m "init gitbook"
```

최종적으로 `push` 를 해주고 아래 브라우저로 접속해 정상적으로 배포된 것을 확인한다

```bash
git push origin gh-pages
```

```bash 
https://유저명.github.io/레포명
```