# Git 기초 실습: 브랜치 생성 및 병합

목표: 브랜치를 생성하여 독립적으로 작업하고, `Merge`하며 충돌을 해결한다.

<br>

```jsx  

/* 저장소 초기화, 상태 확인 */

// 현재 폴더를 git 저장소로 초기화
git init

// 파일 상태 확인
git status


/* 초안 파일 init.txt 생성 후 커밋 */
git add *
git commit -m "V0.0 INIT"

// 로그 간결 확인 (확인해가며 진행)
git log --oneline

// Branch 확인(기본 master 존재 확인)
git branch


/* branch 생성 및 이동 */

// dev Branch 생성 
git branch dev

// dev로 이동
git switch dev

// -------------------------------------
// Fast-Forward 병합 (Default: FF) 
// -------------------------------------
// 비효율. 커밋이 만들어지지 않음.

// Dev branch에 div_01.txt 생성 후 커밋
git add *
git commit "V0.1 div_01"

// 이때 div branch에 작업한 것은 master가 아직 알 수 없음.

// master로 이동하여 FF 병합
git switch master
git merge dev

// -------------------------------------
// non-Fast-Forward 병합 (--no-ff) 
// -------------------------------------
// 병합 기록(커밋)을 남김. 추천 ★★

// Dev branch에서 div_02.txt 생성 후 커밋
git switch dev
git add *
git commit -m "V0.2 dev_02"

// non-FF 병합
git switch master
git merge dev --no-ff -m "V0.2 dev_02 merge" 
// 동기화 진행
git switch dev 
git merge master

// -------------------------------------
// 충돌(Conflict) 해결 후 병합
// -------------------------------------
// master와 dev가 동일한 파일의 다른 내용을 수정했을 때

// 병합될 branch로 이동
git branch master
git merge dev 
// 충돌 발생 -> 적용 X 오류 메시지 출력
// 폴더에서 해당 파일을 열어 최종수정 후 add 진행. 
git add *

// 병합 진행
git merge --continue // 문서 오픈 시 i -> 수정 -> esc -> :wq

// 동기화  
git switch dev
git merge master
```