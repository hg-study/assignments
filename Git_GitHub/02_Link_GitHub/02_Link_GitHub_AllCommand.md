# Link_GitHub_AllCommand

### GitHub 연동 명령어 요약

<br>

### 1. 원격 저장소 로컬 복사
처음 시작해 컴퓨터에 파일이 없을 때 실행
```jsx
git clone "https://github.com/계정이름/리포지토리 이름.git"  // 저장소 링크 복사-붙여넣기
```
<br>

### 2. 로컬에서 원격 저장소 확인, 연결
clone으로 파일 불러와 컴퓨터에 코드가 있을 때 실행

```jsx
// 연결된 원격 저장소들 이름 확인
git remote

// 연결된 원격 저장소들 이름, URL 확인
git remote -v

// 해당 원격 저장소 상세 정보 확인
git remote show "이름"

// 새로운 원격 저장소 연결 
git remote add "원하는 이름" "https://github.com/계정이름/리포지토리 이름.git"
git remote add origin "링크" // 보통 origin 사용

// 원격 저장소 삭제(로컬 데이터는 남아있음)
git remote remove "이름" // = git remote rm "이름"

// 원격 저장소 별칭 변경
git remote rename "기존이름" "새이름"
```
<br>

원격 저장소 내용 내려받아 merge
```jsx
git pull "저장소명" "브랜치명"
git pull origin // 보통 이렇게 사용
```
<br>

merge없이 원격 저장소 내용 내려받기
```jsx
git fetch "저장소명" "브랜치명"
git fetch origin // 보통 이렇게 사용
```
<br>

로컬 commit 원격 저장소로 업로드
```jsx
git push "저장소명" "브랜치명" 
git push "저장소명" // 브랜치 지정 생략도 가능
git push origin // 보통 이렇게 사용
```
<br>

저장소명 작성 생략 명령어 (브랜치마다 따로따로 실행)
```jsx
git push --set-upstream "저장소명" "브랜치명" 
// = git push -u origin master
// 이후부터는 git push  git pull 만 해도 업로드된다.
```

<br>

충돌 해결 후 push

```jsx
// 충돌을 확인한 뒤 해당 파일을 열어 내용을 고친 뒤 add merge한다.

git add *
git merge  --continue // 메세지 작성하라고 문서 오픈. i 로 수정, esc로 수정종료 가능, :wq 로 저장-나가기

git push origin
```