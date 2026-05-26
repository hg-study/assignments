# Git&Branch_AllCommand

### Git & Branch 명령어 요약

<br>

### **1. Git 명령어**

<br>

**1) Git user 글로벌&로컬 설정**

전역설정
```jsx
// 전역설정
git config --global user.email "your email"
git config --global user.name "your nickname"

// 전역설정 확인
git config --global --list

// 전역설정 초기화
rm ~/.gitconfig

// 특정 전역설정 삭제
git config --global --unset user.name
git config --global --unset user.email

// 전역설정 확인
git config --global --list
```
<br>

지역설정
```jsx
// 지역설정
git config --local user.email "your email" 
git config --local user.name "your nickname"

// 지역설정 확인
git config --list 

// 지역 설정 초기화
rm -rf .git/config

// 특정 지역 설정 삭제
git config --local --unset user.name
git config --local --unset user.email
```
<br>

기타 설정
```jsx
// 기본 브랜치 이름 변경
git config --global init.defaultBranch main

// 별칭(Alias) 설정
// git config --global alias.별칭 명령어
git config --global alias.ci commit

/* Git 기본 명령어 */

// 초기화
git init
```

---

**2) Git 기본 명령어**

<br>

초기화

```jsx
git init
```
<br>

저장 명령어
```jsx
// add
git add abc.txt           // 특정 파일 add
git add *                   // 전체 파일 add

// commit
git commit -m "log message"  // 최종 저장소로 commit, 메시지 기록
```

<br>

확인 명령어

```jsx
// status 
git status   // WD와 SA의 상태 확인

// log
git reflog         // 전체 로그 확인
git log            // 로그 확인
git log --oneline  // 한줄 단축 로그 확인
```

<br>

복원 명령어

```jsx
git reset --soft "Commit Hash"   // 폴더 내용 유지, commit을 취소해 add에 남긴다.
git reset --mixed "Commit Hash"  // 폴더 내용 유지,  commit과 add를 모두 취소한다.
git reset --hard "Commit Hash"   // 폴더 내용 삭제, commit과 add 모두 취소한다. 
```

---


<br>

### **2. Branch 명령어**

<br>

기본 명령어
```jsx
// 확인 명령어
git branch
git branch -a // 모든 브랜치 확인

// 생성 명령어
git branch "name"

// 이름 변경 명령어 (현재 작업 중인 브랜치 이름 강제 변경)
git branch -M "name"

// 변경 명령어 (둘 중 선택 사용)
git switch "name"
git checkout "name"
```

<br>

병합 명령어

```jsx
// Fast-Forward(Default: FF) - 비권장
git switch "B 병합될 브랜치"  // 병합될 브랜치에 switch해서 진행
git merge "A 브랜치"

// non-Fast-Forward - 권장
git switch "B 병합될 브랜치"
git merge "A 브랜치" --no-ff -m "log message"

// 동기화
git switch "A 병합한 브랜치"
git merge "B 브랜치"
```

<br>

충돌 해결 후 병합

```jsx
// 충돌 해결 후 병합
git merge "B 병합될 브랜치" // 또는 non-ff사용. 문제 메시지 출력+다른 내용 강조. 폴더에서 해당 파일을 열어 최종수정 후 add 진행.
git add * 
git merge —continue // 메세지 작성하라고 문서 오픈. i 로 수정, esc로 수정종료 가능, :wq 로 저장-나가기

// 동기화  
git switch "A 브랜치"
git merge "B 브랜치"
```


---

### Link
[더 많은 명령어 확인 사이트](https://www.heropy.dev/p/PcUkdT)
