# Branch_Command

### Branch 명령어

> 개발자들이 프로젝트를 공유하고 같이 작업할 수 있도록 해주며, 각 독립적인 저장소 안에서 소스코드를 변경할 수 있다. 각각의 브랜치는 다른 브랜치의 영향을 받지 않으므로 여러 작업을 동시 진행할 수 있다.

branch 가지 확인 `git log --graph`

<br>

### **확인 명령어**

```jsx
git branch
git branch -a // 모든 브랜치 확인
```
<br>

### **생성 명령어**

branch를 생성한다.

```jsx
// git branch "name"
git branch dev 
```
<br>

### 이름 변경 명령어
현재 작업 중인 브랜치의 이름을 강제 변경한다.
```jsx
// git branch -M "name"
git branch -M main
```

<br>

### **변경 명령어**

현재 작업 중인 branch를 변경한다.

```jsx
// 둘 중 선택 사용
// git switch "name"
git switch dev
// git checkout "name"
git checkout main
```
---

### **병합 명령어**

> A branch에서 작업한 내용은 B branch에 보이지 않기 때문에 A 작업 완료 후 합치는 작업이 필요하다.
<br><span style="color:brown">병합될 브랜치</span>에 switch해서 진행해야 한다. (ex. feature → dev 로 병합할 경우 dev에서 진행)

<br>

**1. Fast-Forward(Default: FF)**

기본값. 커밋을 생성하지 않고, 메시지를 작성할 수 없다. 정확한 시점이 기록되지 않으므로 권장되지 않는다.

```jsx
// A→B
// git switch "B 병합될 브랜치"
// git merge "A 브랜치" 

// ex) feature → dev 로 병합
git switch dev
git merge feature

```
<br>

**2. non-Fast-Forward**

커밋을 생성하고, 메시지를 작성할 수 있다. 흔히 사용되며 권장된다.<br>
**non-ff**는 브랜치를 자동으로 올려주지 않으므로 FF로 브랜치 위치 동기화가 필요하다.

```jsx
// A→B
git switch "B 병합될 브랜치"
git merge "A 브랜치" --no-ff -m "로그 메시지"

// 동기화
git switch "A 브랜치"
git merge "B 브랜치"

// 로그 메시지를 작성하지 않을 경우
git merge "A 브랜치" --no-ff  // 메세지 작성하라고 문서 오픈. **i** 로 수정, esc로 수정종료 가능, **:wq** 로 저장-나가기
```

<br>

**병합 예시**
```
// ex) feature → dev 로 병합
git switch dev
git merge feature --no-ff -m "V0.3-merge"
git switch feature
git merge dev
```

<br>

### 충돌 해결 후 병합

각 branch의 <span style="color:brown">동일한 파일에 다른 내용이 작성되어있는 상태</span>에서 병합을 시도할 경우 문제 메시지가 출력되고, 해당 파일에서 다르게 작성된 내용을 강조해준다. 이를 수정하고 continue하여 병합한다.

```jsx
git merge "B 병합될 브랜치" 
// 적용 X 문제 메시지 출력+다른 내용 강조. 
// 폴더에서 해당 파일을 열어 최종수정 후 add 진행.

git add * 
git merge --continue // non-ff라 동기화 진행 필요. 메세지 작성하라고 문서 오픈. **i** 로 수정, esc로 수정종료 가능, **:wq** 로 저장-나가기

// 동기화 ★★★
git switch "A 브랜치"
git merge "B 브랜치"

```

<br>

**충돌해결 후 병합 예시**
```
// ex) dev → master 로 병합
git switch master
git merge dev --no-ff -m "V0.5 merge" // 오류 출력. 폴더 해당파일 수정.

git add *
git merge --continue 

// 동기화  
git switch dev
git merge master
```