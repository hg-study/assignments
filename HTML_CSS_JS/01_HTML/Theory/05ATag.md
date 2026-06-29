# ATag

### `<a>` 태그 정의

> 하이퍼링크를 생성하는 인라인 요소다. `href` 속성에 지정한 경로로 이동하거나, 페이지 내 특정 위치로 스크롤하거나, 이메일·전화 앱을 실행하는 등 다양한 방식으로 동작한다.

<br>

| **속성** | **설명** |
| --- | --- |
| `href` | 이동할 URL, 파일 경로, 앵커명, 프로토콜을 지정하는 속성 |
| `target` | 링크를 열 위치를 지정하는 속성 |
| `download` | 링크를 탐색 대신 파일 다운로드로 처리하는 속성 |
| `rel` | 현재 문서와 링크 대상의 관계를 지정하는 속성. `noopener noreferrer` 등 보안 설정에 사용 |

<br>

---

## href - 경로 유형

<br>

### 경로 종류

> `href`에 지정하는 경로 유형에 따라 링크의 동작 방식이 달라진다.

<br>

| **유형** | **예시** | **설명** |
| --- | --- | --- |
| 상대 경로 | `./02Basic.html` | 현재 파일 기준 상대적 경로로 이동한다 |
| 절대 경로 | `https://naver.com` | 도메인을 포함한 전체 URL로 이동한다 |
| 페이지 내 앵커 | `#html` | 같은 페이지 내 해당 id/name을 가진 요소로 스크롤 이동한다 |
| 이메일 | `mailto:abc@email.com` | 기본 메일 앱을 실행하고 수신자를 자동 입력한다 |
| 전화 | `tel:010-0000-0000` | 모바일에서 전화 앱을 실행한다 |
| 미구현 | `javascript:void(0)` | 아무 동작도 하지 않는 빈 링크임을 명시한다 |

<br>

- 예제 코드: [ATag 페이지 엥커 링크 & 고정 nev](./11ATag.html)
---

## target - 링크 열기 위치

<br>

### target 속성값

> 링크를 클릭했을 때 콘텐츠가 열리는 위치를 지정한다.

<br>

| **값** | **설명** |
| --- | --- |
| `_self` | 기본값. 현재 탭에서 열린다 |
| `_blank` | 새 탭(또는 새 창)에서 열린다 |
| `_parent` | 부모 프레임에서 열린다 |
| `_top` | 최상위 프레임 전체를 대체해 열린다 |
| `프레임명` | 해당 이름의 `<iframe>`에서 열린다 |

<br>

<span style="color:brown">`_blank` 보안 주의</span>: `target="_blank"`만 단독 사용 시 열린 새 탭이 원래 페이지를 조작할 수 있다. `rel="noopener noreferrer"` 를 함께 작성하는 것이 권장된다.

<span style="color:gray"> - 최신 브라우저는 `_blank`에 `noopener`를 자동 적용하지만, 명시적으로 작성하는 것이 안전하다.</span>

<br>

- 예제 코드: [ATag 스타일 버튼, iframe 연동](./10ATag.html)


---

## 페이지 내 앵커 이동

<br>

### href="#" / id / name

> `href="#값"`으로 같은 페이지 내 특정 위치로 스크롤 이동할 수 있다. 이동 목적지는 `id` 속성(현행 표준) 또는 `<a name="">`(레거시 방식)으로 지정한다.

<br>

| **방식** | **목적지 지정** | **설명** |
| --- | --- | --- |
| 현행 표준 | `<h2 id="html">` | 이동할 요소에 `id` 속성을 직접 부여한다 |
| 레거시 | `<a name="html">` | 이동 목적지에 빈 `<a>` 태그를 배치한다. 오래된 방식이나 여전히 동작한다 |

<br>

<span style="color:gray"> - 현재는 `<a name="">` 대신 목적지 요소에 `id`를 직접 부여하는 방식이 표준이다.</span>

<br>

- 예제 코드: [ATag 스타일 버튼, iframe 연동](./10ATag.html)

---

## iframe - 외부 문서 삽입

<br>

### `<iframe>`

> 현재 HTML 문서 안에 다른 HTML 문서를 삽입하는 인라인 프레임 요소다. `<a>`의 `target` 속성에 iframe의 `name`을 지정하면 해당 iframe 안에서 링크가 열린다.

<br>

| **속성** | **설명** |
| --- | --- |
| `name` | iframe을 식별하는 이름. `<a target="name">`과 연결하는 데 사용한다 |
| `src` | 초기 로드할 URL을 지정한다. 빈 값이면 빈 상태로 시작한다 |
| `width` / `height` | iframe의 너비와 높이를 지정한다 |
| `frameborder` | 테두리 표시 여부. `0`: 없음 / `1`: 있음 (HTML5에서는 CSS `border` 사용 권장) |

<br>

<span style="color:brown">**보안 이슈**</span>: 외부 사이트(naver, google 등)는 `X-Frame-Options` 또는 `Content-Security-Policy` 정책으로 iframe 삽입을 차단한다. 실무에서는 직접 제어 가능한 도메인에만 사용한다.

<br>

- 예제 코드: [ATag 스타일 버튼, iframe 연동](./10ATag.html)

---

## javascript:void(0) - 미구현 링크

<br>

### href="" vs javascript:void(0)

> 기능이 아직 구현되지 않은 `<a>` 태그에 적절한 `href` 값을 지정하는 방법이다.

<br>

| **값** | **동작** | **설명** |
| --- | --- | --- |
| `href=""` | 현재 페이지 새로고침 | 빈 문자열은 현재 URL로 요청을 재전송한다 |
| `href="#"` | 페이지 최상단으로 스크롤 | 이름 없는 앵커로 처리되어 화면이 위로 튄다 |
| `href="javascript:void(0)"` | 아무 동작 없음 | 명시적으로 빈 링크임을 표시. 충돌 및 새로고침 방지 |

<br>

<span style="color:gray">- 실무에서는 `javascript:void(0)` 대신 버튼(`<button>`)을 쓰거나, JS로 `event.preventDefault()`를 처리하는 방식을 선호한다.</span>

<br>

- 예제 코드: [ATag 스타일 버튼, iframe 연동](./10ATag.html)

---

### Link
[MDN - `<a>` 요소](https://developer.mozilla.org/ko/docs/Web/HTML/Reference/Elements/a)