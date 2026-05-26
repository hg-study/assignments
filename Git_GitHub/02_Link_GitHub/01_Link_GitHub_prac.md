# GitHub 실습: 원격 저장소(Remote) 연동

GitHub 원격 저장소를 생성하고, 로컬 저장소와 연결하여 `Clone`, `Push`, `Pull` 해본다.

<br>

```jsx  

/* GitHub 원격 저장소 생성 및 로컬 준비 */
// 1. 깃허브에 로그인해 새 리포지토리를 생성한다.
// 2. 로컬에 저장할 파일을 만든다.
// 3. 파일 위치 주소창 클릭 후 'cmd' 입력 → 명령 프롬프트를 오픈한다.

/* Remote ➔ Local (git clone) */
// 상황: 원래 존재하는 리포지토리의 내용을 컴퓨터에 받아오고 싶다.

// 원격 저장소 복제 (저장소 링크 복사-붙여넣기)
git clone "https://github.com/계정이름/리포지토리 이름.git"

/* Local ➔ Remote Repository (git push) */
// 상황: 새로운 리포지토리에 내가 작성한 파일들을 업로드하고 싶다.

// 현재 폴더를 git 저장소로 초기화
git init

// 파일들 add, commit
git add *
git commit -m "V0.0"

// 기본 브랜치 확인 (기본 이름이 master임을 확인)
git branch
// 브랜치명을 요즘 표준 이름인 main으로 강제 변경
git branch -M main

// 브랜치 이름이 main으로 바뀌었는지 확인
git branch

// 로컬 저장소와 원격 저장소(GitHub) 연결 (별칭: origin)
git remote add origin https://github.com/계정이름/리포지토리명.git

// 연결된 원격 저장소 목록 및 주소 확인
git remote -v

// 원격 저장소로 push 시도
git push origin
// main 브랜치를 어디로 보낼지 연결고리(upstream)가 없다는 오류 메시지 출력
// 아래 명령어로 연결

// 저장소명 작성 생략 명령어 (브랜치마다 따로따로 실행)
git push --set-upstream origin main

/* 로컬에서 파일 추가 후 재업로드 */
// 로컬에서 다른 파일을 추가 및 수정 후 반영하는 과정
git add *
git commit -m V0.1
git push origin

/* Remote ➔ Local (git pull) */
// 상황: 원격 저장소의 최신 내용을 로컬로 가져와 동기화하고 싶다. (Push 전 Pull 필수)

// 원격 저장소(origin)의 main 브랜치 내용을 로컬로 pull해 당겨와 동기화
git pull origin main
```