# UserInfo_Settings

### git user 글로벌&로컬 설정

<br>

**git 다운로드**

git 다운로드 ⭢ cmd 오픈 ⭢ git 버전 확인 `git -v`

<br>

**전역(글로벌) 설정**

> 내 pc에서 git 저장소 사용 시 github commit user 정보를 공통으로 적용할 때 사용되며, 전역 사용자 정보 및 환경설정을 정의한다. 이는 ~/.gitconfig에 저장된다.

<br>

**전역 설정 명령어**
```jsx
// 깃허브와 동일 email, nickname
git config --global user.email "your email" 
git config --global user.name "your nickname"

// 설정 내용 확인
git config --global --list
```

<br>

**전역 설정 삭제 명령어**
```jsx
// 전역 설정 초기화
rm ~/.gitconfig

// 특정 설정 삭제
git config --global --unset user.name
git config --global --unset user.email
```
---
**지역(로컬) 설정**

> 저장소마다 계정 정보를 달리 사용할 때 사용한다. 로컬 설정이 되어있다면 글로벌 설정보다 우선적으로 적용된다.


**로컬 설정 명령어**
```jsx
// cmd로 특정 저장소 이동 후 진행
// 깃허브와 동일 email, nickname
git config --local user.email "your email" 
git config --local user.name "your nickname"

// 설정 내용 확인
git config --list
```

<br>

**전역 설정 삭제 명령어**
```jsx
// 지역 설정 초기화
rm -rf .git/config

// 특정 설정 삭제
git config --local --unset user.name
git config --local --unset user.email
```

---

**기타 설정**
```jsx
// 기본 브랜치 이름 변경
git config --global init.defaultBranch main

// 별칭(Alias) 설정
// git config --global alias.별칭 명령어
git config --global alias.ci commit
```

