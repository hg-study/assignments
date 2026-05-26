# Git_Command

### Git 기본 명령어

<br>

**저장 순서** 

>작업 폴더 → 임시 저장소(add) → 최종 저장소(commit) → 원격 폴더
<br>WD(Working Directory) → SA(Staging Area) → LR(Local Repository) → repo(Remote Repository)

HEAD: 현재 위치 포인터

---
### 기본 명령어

<br>

**초기화**

현재 폴더를 새로운 git 저장소로 만들거나 기존 저장소를 초기화한다.
```jsx
git init
```
<br>

**저장 명령어**

<br>

- **add**

**WD → SA add**: 작업 폴더(WD) → 임시 저장소(SA)로 add한다.

```jsx
// 특정 파일
// git add filename
git add abc.txt

//전체 파일
git add *
```

<br>

- **commit**

**SA → LR commit**: 임시 저장소(SA) → 최종 저장소(LR)로 commit한다.<br>
메세지를 작성해 로그 확인을 통해 볼 수 있는 변경 사항 메시지를 기록할 수 있다.<br>
로그 메시지에 스페이스바를 사용하지 않으면 “”가 없어도 된다.

```jsx
//git commit -m "log message" 
git commit -m "V0.0 aaa.txt added"
```
---

### 확인 명령어

<br>

- **status**

**WD와 SA의 상태 확인**:
<span style="color:brown">변경 사항을 파악해 파일이 add에 들어갔는지, 전부 commit 되어 SA가 비어있는지 알 수 있다.</span><br>
add되지 않은 파일(untracked files), <br>
add된 커밋 예정 파일(Changes to be committed), <br> 
add되었고 수정된 파일(Changes not staged for commit)을 볼 수 있다.

```jsx
git status
```
 
<br>
 
- **log**

**로그 확인**: <span style="color:brown">작업 기록을 확인</span>하고, 기록을 되돌릴 수 있는 해시(ID)를 볼 수 있다.

**전체 로그 확인**: HEAD되었던 모든 기록들을 출력한다. `git log` 에는 없는 삭제된 커밋도 볼 수 있다.<br>
**로그 확인**: 현재 존재하는 모든 기록들을 출력한다. <br>
**단축 로그 확인**: 현재 존재하는 모든 기록들을 1줄로 줄여 출력한다.

```jsx
// 전체 로그 확인
git reflog 

// 로그 확인
git log

//한줄 단축 로그 확인
git log --oneline
```

---
### 복원 명령어

로그를 확인해 파악한 해시를 이용하여 <span style="color:brown">해당 시점까지 되돌린다.</span>

- **soft**: 폴더 내용 유지, commit을 취소해 add에 남긴다.<br>
- **mixed**: 폴더 내용 유지,  commit과 add를 모두 취소한다.<br>
- **hard**: 폴더 내용 <span style="color:brown">삭제</span>, commit과 add 모두 취소한다.<br>
    - hard에서 add에 파일을 넣어두고 파일 생성 전 시점으로 되돌릴 경우, 이미 폴더 안 내용을 삭제했고 최종 저장소에 담긴 적이 없으므로 다시 앞으로 돌려도 add에 있는 파일은 복원할 수 없다.

```jsx
// git reset --hard "Commit Hash"
git reset --hard 3052268
```
 
<br>
 
**복원 명령어 3종**
> 로컬 명령어이므로 원격 저장소에는 영향을 미치지 않고, 이후 다른 명령어를 통해 원격 저장소에 적용한다.

| git reset | 포인터<br>HEAD | 작업 폴더<br>Working Directory  | 임시 저장소<br>Staging Area | 최종 저장소<br>Local Repository |
| --- | --- | --- | --- | --- |
| --soft | 이동 | 유지 | 유지+repo 파일 추가 | 삭제 ❌ |
| --mixed (기본값) | 이동 | 유지 | 삭제 ❌ | 삭제 ❌ |
| --hard (비권장) | 이동 | 삭제 ❌ | 삭제 ❌ | 삭제 ❌ |

---

### Link
[명령어 확인 사이트](https://git-scm.com/book/ko/v2)

[형상 확인 추천](https://yganalyst.github.io/etc/git_github_summary/)