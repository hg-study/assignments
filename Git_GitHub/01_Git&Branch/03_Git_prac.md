# Git 기초 실습: 파일 생성 및 복원

목표: 파일을 순차적으로 생성하고 커밋한 뒤, 특정 시점으로 `reset`하여 복원한다.

<br>

```jsx

/* 저장소 초기화, 상태 확인 */

// 현재 폴더를 git 저장소로 초기화
git init

// 파일 상태 확인
git status

// 로그 간결 확인 (확인해가며 진행)
git log --oneline

/* 파일 생성, commit 진행 */
// 문서에 파일 만든 뒤 git 에 add (임시 저장소) -" commit+로그메시지 (최종 저장소)

// aaa.txt 추가
git add aaa.txt 
git commit -m "V0.0 aaa.txt added"

// bbb.txt 추가
git add bbb.txt 
git commit -m "V0.1 bbb.txt added"

// 나머지 모든 파일(ccc.txt 포함) 추가
git add *
git commit -m "V0.2 ccc.txt added"

// 로그 확인으로 커밋 해시 확인
git log --oneline

/* 특정 시점 복원 */
//git reset --hard "Commit Hash"
git reset --hard 3052268

// 삭제기록 포함 모든 로그 확인
git reflog

```