# Sourcetree_GitFlow_prac

### Sourcetree GitFlow 실습
> sourcetree에서 GitFlow전략으로 브랜치를 나누어 관리해본다. 각 브랜치마다 push하고 재배치해본다.

<br>


#### 파일 연결 & master 생성
Sourcetree에 파일을 연결하고, 첫 시작 시에는 어떤 브랜치도 생성되어 있지 않으므로 한번 커밋해 master 브랜치 생성

![master 생성](../../.github/images/Sourcetree/00_Sourcetree_image.png)

<br>

---

<br>

#### 깃플로우
`깃 플로우…` 버튼을 클릭해 저장소 초기화 실행

![깃 플로우...](../../.github/images/Sourcetree/02_Sourcetree_image.png)

<br>

#### dev 커밋
만들어진 develop에 파일 수정하여 한 번 커밋

![dev 커밋](../../.github/images/Sourcetree/02_1_Sourcetree_image.png)

<br>

---

<br>

#### feature 하위 브랜치 생성, 커밋

dev가 선택된 상태에서 `깃 플로우...` 버튼 다시 클릭, `새 기능 시작`

![다음 Flow 동작](../../.github/images/Sourcetree/03_Sourcetree_image.png)

feature의 하위 브랜치 `func1` 생성

![새 기능 시작](../../.github/images/Sourcetree/04_Sourcetree_image.png)

파일 수정해 func1로 올리고 한 번 커밋

![func1 커밋](../../.github/images/Sourcetree/04_1_Sourcetree_image.png)
<br> 

#### feature 하위 브랜치 재생성, 커밋

dev 더블클릭해 브랜치 위치 옮기고 `깃플로우...` 버튼 클릭 → `새 기능 시작` → feature의 하위 브랜치 `func2` 생성

![새 기능 시작2](../../.github/images/Sourcetree/05_Sourcetree_image.png)

파일 수정해 func2로 올리고 한 번 커밋

![func2 커밋](../../.github/images/Sourcetree/05_1_Sourcetree_image.png)

<br>

---

<br>

#### dev 브랜치 완료 커밋

`dev` 브랜치 더블클릭해 브랜치 위치 옮긴 뒤 파일 수정하고 커밋해 수정 완료 표시, dev는 브랜치를 삭제하지 않는다.

![dev 커밋](../../.github/images/Sourcetree/06_Sourcetree_image.png)

<br>

#### func1 브랜치 완료(dev로 merge)

<br>

- **방법1**

`func1` 브랜치 더블 클릭해 브랜치 위치 옮긴 뒤 `깃 플로우...` 버튼 클릭 → `기능 마무리` 하고 확인 클릭.

본래 브랜치 삭제하는게 맞으나 지금은 확인하기 위해 삭제하지 않았다.

![func1 브랜치 완료](../../.github/images/Sourcetree/07_Sourcetree_image.png)

커밋이 새로 만들어지는 non-ff로 병합되었다.

![non-ff 병합](../../.github/images/Sourcetree/08_Sourcetree_image.png)

#### func2 브랜치 완료(dev로 merge)

- **방법2**

`dev` 브랜치 더블클릭해 브랜치 위치 옮긴 뒤 `func2` 커밋된 곳 오른쪽 마우스 → `병합` → 확인 클릭. 

![func2 브랜치 병합](../../.github/images/Sourcetree/09_Sourcetree_image.png)


이때 □ `fast-forward가 가능해도 새 커밋 생성` 체크박스를 클릭하면 non-ff 병합, 클릭하지 않으면 ff 병합되니 주의!

![병합 확정](../../.github/images/Sourcetree/10_Sourcetree_image.png)

<br>

---

<br>

#### 전체 흐름 확인

![흐름 확인](../../.github/images/Sourcetree/11_Sourcetree_image.png)

