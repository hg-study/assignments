# Sourcetree_Rebase_prac

### Sourcetree Rebase 실습
> sourcetree에서 재배치를 통해 커밋 내역을 깔끔하게 정리해본다. <br>
> 이후 깃허브 저장소를 생성해 연동하여 원격으로 재배치해본다.

[재배치 상세 설명](https://github.com/1gyeolpark/Fullstack_Study/blob/main/Git_GitHub/04_Sourcetree/01_Sourcetree_Guide.md#L80)

<br>


### Sourcetree 재배치

<br>

#### dev 커밋
03 폴더에서 이어 진행. develop을 상단으로 올리기 위해 파일 수정하고 한 번 커밋한다.

![dev 커밋](../../.github/images/Rebase/01_Rebase_image.png)


<br>

---


#### feature 하위 브랜치 생성, 커밋

dev가 선택된 상태에서 `깃 플로우...` → `새 기능 시작` → feature의 하위 브랜치 `f1` 생성

![새 기능 시작](../../.github/images/Rebase/02_Rebase_image.png)

파일 수정해 f1로 올리고 한 번 커밋

![f1 커밋](../../.github/images/Rebase/03_Rebase_image.png)

<br>

#### feature 하위 브랜치 재생성, 커밋

dev 더블클릭해 브랜치 위치 옮기고 `깃플로우...` 버튼 클릭 → `새 기능 시작` → feature의 하위 브랜치 `f2` 생성

![새 기능 시작](../../.github/images/Rebase/04_Rebase_image.png)

파일 수정해 f2로 올리고 한 번 커밋

![f2 커밋](../../.github/images/Rebase/05_Rebase_image.png)

<br>

---

<br>

#### dev 브랜치 완료 커밋

`dev` 브랜치 더블클릭해 브랜치 위치 옮긴 뒤 파일 수정하고 커밋해 수정 완료 표시.

![dev 커밋](../../.github/images/Rebase/06_Rebase_image.png)

<br>

#### f1 브랜치 완료
> 재배치: 병합할 브랜치 → dev / 병합: dev → 병합할 브랜치

<br>

**재배치**: `f1` 브랜치 더블 클릭해 위치 옮긴 뒤 `dev` 커밋된 곳 오른쪽 마우스 → `재배치` → `확인` 클릭. 

![재배치](../../.github/images/Rebase/07_Rebase_image.png)

![재배치 확인](../../.github/images/Rebase/08_Rebase_image.png)

![형상 확인](../../.github/images/Rebase/09_Rebase_image.png)

**병합:** `dev` 브랜치 더블 클릭해 위치 옮긴 뒤 `f1` 커밋된 곳 오른쪽 마우스 → 병합 → `fast-forward가 가능해도 새 커밋 생성` 체크박스를 클릭 후 확인 (체크 하지 않으면 일렬로 깔끔하게 정렬되나 분기 확인 불가)

![병합](../../.github/images/Rebase/10_Rebase_image.png)

![병합 확정](../../.github/images/Rebase/11_Rebase_image.png)


`f2`도 같은 방식으로 마무리.

#### 최종 흐름 확인

![최종 형상 확인](../../.github/images/Rebase/12_Rebase_image.png)

<br>

---

<br>

### Sourcetree GitHub 원격 재배치

먼저 GitHub에서 readme가 없는 저장소를 생성한 뒤 링크를 복사한다.
- 복제할 폴더를 만들고 `생성` → 경로에 폴더 경로 넣어 `생성` 클릭 
- 이후 `원격` 클릭 → `추가` 클릭한다.
- `디폴트 원격` 체크박스 클릭하고 경로에 깃허브 링크를 붙여넣고 `확인` 누른다.

![원격 저장소 정보](../../.github/images/Rebase/13_Rebase_image.png)

폴더에 파일 넣어 한번 커밋하고 깃 플로우...로 dev 만든 뒤 `push` 눌러 모든 브랜치를 원격 저장소로 push한다.

![원격 저장소 push](../../.github/images/Rebase/14_Rebase_image.png)

<br>

---


#### feature 하위 브랜치 생성, 커밋

위와 동일하게 func1과 func2 생성해 재배치해본다.

<br>

**func 커밋**

func2도 동일하게 생성하고 한 번씩 커밋한다. 
![func1 커밋](../../.github/images/Rebase/15_Rebase_image.png)

<br>

**dev 완료 커밋**

![dev 커밋](../../.github/images/Rebase/16_Rebase_image.png)

<br>

**재배치**

이후 둘 모두 재배치 - 병합한다.
1. **병합할 브랜치**’에 헤더를 두고 ‘**dev**’가 있는 곳 오른쪽 마우스 → `재배치`
2. 한칸 올라가면 그 아래 ‘**dev**’에 헤더를 두고 ‘**병합할 브랜치**’에 오른쪽 마우스 → `병합` ** 이때 fast-forward가 가능해도 `새 커밋으로 생성`  체크해 형상 확인

![01_Sourcetree_image](../../.github/images/Sourcetree/01_Sourcetree_image.png)

전부 마무리한 뒤 pull - push해 깃허브에 업데이트한다.