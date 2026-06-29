# CssAttribute

### CSS 기본 개념

> CSS(Cascading Style Sheets)는 HTML 요소에 색상, 크기, 배치 등 시각적 스타일을 지정하는 언어다. HTML이 구조를 담당한다면 CSS는 표현을 담당한다.

<br>

**CSS 적용 방식**

| **방식** | **설명** |
| --- | --- |
| 인라인(Inline) | HTML 태그 `style` 속성에 직접 작성한다. `<p style="color:red">` |
| 내부(Internal) | `<head>` 안 `<style>` 태그 내에 작성한다 |
| 외부(External) | 별도 `.css` 파일을 만들어 `<link rel="stylesheet">`로 연결한다 |

<br>

**길이 단위**

| **단위** | **설명** |
| --- | --- |
| `px` | 픽셀. 절대 단위 |
| `%` | 부모 요소 기준 상대 비율 |
| `em` | 현재 요소의 font-size 기준 상대 단위 |
| `rem` | 루트(`html`) 요소의 font-size 기준 상대 단위 |
| `vw` / `vh` | 뷰포트 너비 / 높이의 1% |

<br>

---

## 크기

> 요소의 너비, 높이, 내외부 여백을 지정하는 속성들이다.

<br>

| **속성** | **포함되는 값** | **설명** |
| --- | --- | --- |
| `width` | `px` `%` `vw` `auto`<br>**auto:** 콘텐츠 너비에 맞게 자동 계산<br>`width: 300px;` | 요소 너비 |
| `height` | `px` `%` `vh` `auto`<br>**auto:** 콘텐츠 높이에 맞게 자동 계산<br>`height: 200px;` | 요소 높이 |
| `min-width` | `px` `%`<br>요소가 이 값보다 작아지지 않는다<br>`min-width: 200px;` | 최소 너비 |
| `max-width` | `px` `%`<br>요소가 이 값보다 커지지 않는다<br>`max-width: 1200px;` | 최대 너비 |
| `min-height` | `px` `%`<br>`min-height: 100px;` | 최소 높이 |
| `max-height` | `px` `%`<br>`max-height: 500px;` | 최대 높이 |
| `margin` | **a:** 상하좌우 공통<br>**a b:** 상하 / 좌우<br>**a b c:** 상 / 좌우 / 하<br>**a b c d:** 상 / 우 / 하 / 좌<br>**auto:** 브라우저 자동 계산. 블록 요소 수평 가운데 정렬에 사용<br>음수 허용: 요소를 당겨 겹치게 배치 가능<br>`margin: 10px auto;` | 요소 바깥 여백 |
| `padding` | `margin`과 동일한 단축 표기 적용<br>음수 불가<br>`padding: 20px 10px;` | 요소 안쪽 여백 |

<br>

---

## 레이아웃

> 요소의 배치 방식, 위치 기준, 쌓임 순서를 제어하는 속성들이다.

<br>

| **속성** | **포함되는 값** | **설명** |
| --- | --- | --- |
| `display` | **block:** 한 줄 전체 차지. width/height 지정 가능<br>**inline:** 콘텐츠 크기만큼만 차지. width/height 지정 불가<br>**inline-block:** 인라인처럼 배치되지만 width/height 지정 가능<br>**none:** 화면에서 완전히 제거. 레이아웃 공간도 없어짐<br>**flex:** 자식 요소를 flexbox 방식으로 배치<br>**grid:** 자식 요소를 grid 방식으로 배치<br>`display: inline-block;` | 요소의 레이아웃 배치 방식 |
| `position` | **static:** 기본값. 문서 흐름대로 배치<br>**relative:** 자기 자신의 원래 위치 기준 이동. 공간은 유지됨<br>**absolute:** 가장 가까운 position 지정 부모 기준 절대 배치<br>**fixed:** 뷰포트 기준 고정 배치. 스크롤해도 위치 유지<br>**sticky:** 스크롤 위치에 따라 relative ↔ fixed 전환<br>`position: absolute;` | 요소의 위치 기준 |
| `top`<br>`right`<br>`bottom`<br>`left` | `px` `%`<br>position이 static이 아닐 때 활성화됨<br>`top: 0; left: 0;` | 위치 좌표 지정 |
| `z-index` | 숫자 (기본값 auto)<br>값이 클수록 앞에 표시됨. position 지정 요소에만 동작<br>`z-index: 10;` | 요소의 쌓임 순서 |
| `overflow` | **visible:** 기본값. 넘친 내용 그대로 표시<br>**hidden:** 넘친 내용 잘라 숨김<br>**scroll:** 항상 스크롤바 표시<br>**auto:** 내용이 넘칠 때만 스크롤바 표시<br>`overflow: hidden;` | 콘텐츠가 요소 밖으로 넘칠 때 처리 방식 |
| `float` | **left:** 왼쪽으로 띄워 배치<br>**right:** 오른쪽으로 띄워 배치<br>**none:** 기본값<br>`float: left;` | 요소를 흐름에서 분리해 좌우 배치 |

<br>

---

## 영역

> 요소의 테두리, 외곽선, 그림자, 박스 크기 계산 방식을 제어하는 속성들이다.

<br>

| **속성** | **포함되는 값** | **설명** |
| --- | --- | --- |
| `border` | `굵기 스타일 색상` 순 단축 속성<br>**solid:** 실선 <br>**dashed:** 파선 <br>**dotted:** 점선<br>**none:** 선 없음 <br>**double:** 이중 실선<br>`border: 1px solid black;` | 테두리 |
| `border-radius` | `px` `%`<br>**50%:** 원형으로 만들 때 사용<br>`border-radius: 8px;` | 테두리 모서리 곡률 |
| `border-collapse` | **collapse:** 이중 테두리 → 단일 선<br>**separate:** 기본값. 이중 테두리<br>`border-collapse: collapse;` | 테이블 테두리 병합 방식 |
| `box-sizing` | **content-box:** 기본값. width/height = 콘텐츠 영역만<br>**border-box:** width/height에 padding · border 포함 계산<br>`box-sizing: border-box;` | 박스 크기 계산 기준 |
| `box-shadow` | `x y blur spread color` 순<br>**inset:** 내부 그림자<br>`box-shadow: 2px 4px 8px rgba(0,0,0,0.2);` | 박스 그림자 |
| `outline` | `굵기 스타일 색상` 순. border와 유사하지만 레이아웃에 영향 없음<br>`outline: 2px solid red;` | 윤곽선. 레이아웃 공간 차지 안 함 |

<br>

---

## 색상 & 배경

> 요소의 글자색, 배경색, 배경 이미지를 제어하는 속성들이다.

<br>

**색상 표기 방식**

| **방식** | **예시** | **설명** |
| --- | --- | --- |
| 키워드 | `red` `black` `white` | CSS에서 정의된 색상 이름 |
| HEX | `#ff0000` `#fff` | 16진수 RGB 표기 |
| RGB | `rgb(255, 0, 0)` | 빨강 / 초록 / 파랑 0~255 |
| RGBA | `rgba(0, 0, 0, 0.5)` | RGB + 투명도 (0: 완전 투명 ~ 1: 완전 불투명) |

<br>

| **속성** | **포함되는 값** | **설명** |
| --- | --- | --- |
| `color` | 색상값 (키워드 / HEX / RGB / RGBA)<br>`color: #333;` | 글자 색상 |
| `background-color` | 색상값<br>**transparent:** 투명 (기본값)<br>`background-color: rgba(0,0,0,0.5);` | 배경 색상 |
| `background-image` | `url('경로')`<br>`background-image: url('img/bg.png');` | 배경 이미지 |
| `background-size` | **cover:** 비율 유지, 요소 전체를 덮도록 확대/축소<br>**contain:** 비율 유지, 요소 안에 전부 들어오도록<br>`px` `%`<br>`background-size: cover;` | 배경 이미지 크기 |
| `background-repeat` | **repeat:** 기본값. 반복<br>**no-repeat:** 반복 없음<br>**repeat-x / repeat-y:** 가로/세로 방향만 반복<br>`background-repeat: no-repeat;` | 배경 이미지 반복 방식 |
| `background-position` | `center` `top` `bottom` `left` `right`<br>`px` `%` 조합 가능<br>`background-position: center center;` | 배경 이미지 위치 |
| `background` | 배경 관련 속성을 한 줄로 묶은 단축 속성<br>`background: url('bg.png') no-repeat center / cover;` | 배경 단축 속성 |
| `opacity` | `0` ~ `1`<br>자식 요소에도 투명도가 함께 적용됨<br>`opacity: 0.5;` | 요소 전체 투명도 |

<br>

---

## 글자

> 글자의 크기, 굵기, 정렬, 간격 등을 제어하는 속성들이다.

<br>

| **속성** | **포함되는 값** | **설명** |
| --- | --- | --- |
| `font-family` | 폰트 이름. 쉼표로 우선순위 지정, 마지막에 계열 폰트 권장<br>`font-family: 'Noto Sans KR', sans-serif;` | 글꼴 |
| `font-size` | `px` `%` `em` `rem`<br>브라우저 기본값: `16px`<br>`font-size: 1.2rem;` | 글자 크기 |
| `font-weight` | **normal:** 기본 (400)<br>**bold:** 굵게 (700)<br>**lighter / bolder:** 부모 기준 상대적 굵기<br>숫자 100~900 (100 단위)<br>`font-weight: 700;` | 글자 굵기 |
| `font-style` | **normal:** 기본<br>**italic:** 기울임꼴<br>`font-style: italic;` | 글자 기울기 |
| `text-align` | **left:** 왼쪽 정렬 (기본값)<br>**center:** 가운데 정렬<br>**right:** 오른쪽 정렬<br>**justify:** 양쪽 정렬<br>`text-align: center;` | 텍스트 수평 정렬 |
| `text-decoration` | **none:** 장식 없음. 링크 밑줄 제거 시 사용<br>**underline:** 밑줄<br>**line-through:** 취소선<br>**overline:** 윗줄<br>`text-decoration: none;` | 텍스트 장식선 |
| `text-transform` | **uppercase:** 전체 대문자<br>**lowercase:** 전체 소문자<br>**capitalize:** 각 단어 첫 글자 대문자<br>`text-transform: uppercase;` | 영문 대소문자 변환 |
| `line-height` | 숫자(배수) `px` `%`<br>**숫자 권장:** `1.5` = font-size의 1.5배. 단위 없는 숫자는 자식에도 상대적으로 계산됨<br>`line-height: 1.6;` | 줄 간격 |
| `letter-spacing` | `px` `em`<br>음수 허용 (자간 좁히기)<br>`letter-spacing: 0.05em;` | 자간 (글자 사이 간격) |
| `white-space` | **normal:** 기본값. 연속 공백 합침, 자동 줄바꿈<br>**nowrap:** 줄바꿈 하지 않음<br>**pre:** 입력 그대로 유지. 공백/줄바꿈 보존<br>`white-space: nowrap;` | 공백 및 줄바꿈 처리 방식 |

<br>

---

### Link
[CSS 속성 참고서 - MDN](https://developer.mozilla.org/ko/docs/Web/CSS/Reference)