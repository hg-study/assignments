# GitFlow

### GitFlow란
> git을 통한 브랜치 관리 전략으로 프로젝트 협업 시 유용하게 사용할 수 있다. 브랜치를 합칠 때면 —no-ff 옵션을 사용해 히스토리를 남기도록 한다.

<br>

#### GitFlow 브랜치

주요 브랜치(꼭 존재): main, develop<br>
보조 브랜치(특정 작업 위해 생성, 이후 삭제): feature, release, hotfix

**Main(master):** 배포되는 안정적인 코드(완성형)

**[dev]Develop:** 최신 상태. 다음 버전을 개발하는 브랜치.

**[feat]Feature:** 새 기능을 개발하는 브랜치. dev에서 분기. 
완료되면 merge  예시: feature/login

**[rel]Release:** 배포를 준비하는 브랜치. dev에서 분기. 
테스트 및 버그 수정. 완료되면 main과 dev로 merge 예시: release/1.0

**[fix]Hotfix:** 긴급 버그 수정. 
최소한의 작업 처리. main에서 분기. 완료되면 main과 dev로 merge

<br>

#### 흐름 요약

1. **Develop**에서 **Feature**로 분기해 기능 구현
2. 완료된 **Feature**를 **Develop**에 합침
3. 배포 준비 시점에 **Develop**에서 **Release** 생성 및 최종 테스트
4. **Release**를 **Main**과 **Develop**에 합치고 **Main**에 버전 태그(v1.0 등) 생성
5. 긴급 상황 발생 시 **Main**에서 **Hotfix** 생성 후 수정하여 **Main**과 **Develop**에 반영