# moneycoon
부업 앱 '머니쿤' 클론 코딩입니다. `riverpod`에 대한 학습 및 Flutter 프로젝트 설계 연구를 위한 미니 프로젝트이며, 앱 전체 화면 중 홈, 상점, 마이페이지 화면의 UI/UX 중 일부를 구현했습니다. (버튼에 대한 동작은 제외하고 화면의 구성만 개발하였습니다.)


### 기술 스택
`Flutter 3.24.3`
`Riverpod 2.5.0`

<br/><br/><br/><br/>

# 프로젝트 구조

`클린 아키텍처`를 참고하여 프로젝트를 설계하였습니다. data, domain, presentation 패키지로 나누어 각 패키지에 맞는 역할을 부여하였습니다.

데이터의 호출은 단순 assets/json 데이터를 호출하였습니다.

presentation은 screen > page > widget 의 단위로 구성되며, 각 page에 따라 riverpod 파일을 구분하였습니다.

```
.
├── android
├── ios
├── lib
│   ├── di.dart
│   └── main.dart
├── packages
│   ├── data
│   │   ├── assets
│   │   │   └── json
│   │   ├── lib
│   │   │   ├── api
│   │   │   ├── dto
│   │   │   └── repository
│   │   ├── pubspec.lock
│   │   └── pubspec.yaml
│   ├── domain
│   │   ├── lib
│   │   │   ├── entity
│   │   │   ├── repository
│   │   │   └── usecase
│   │   ├── pubspec.lock
│   │   └── pubspec.yaml
│   └── presentation
│       ├── assets
│       │   └── images
│       ├── lib
│       │   ├── common
│       │   ├── main.app.dart
│       │   ├── page
│       │   │   ├── home
│       │   │   │   ├── home.page.dart
│       │   │   │   ├── riverpod
│       │   │   │   └── widget
│       │   │   ├── my
│       │   │   │   ├── my.page.dart
│       │   │   │   ├── riverpod
│       │   │   │   └── widget
│       │   │   └── store
│       │   │       ├── riverpod
│       │   │       ├── store.page.dart
│       │   │       └── widget
│       │   ├── screen
│       │   │   └── main
│       │   │       ├── main.screen.dart
│       │   │       └── riverpod
│       │   └── util
│       ├── pubspec.lock
│       └── pubspec.yaml
├── pubspec.lock
└── pubspec.yaml
```

<br/><br/><br/><br/>

# 결과

<img src="https://github.com/user-attachments/assets/f5aea141-11bb-41ee-972e-7b0200126716" width="300" height="650"/>
<img src="https://github.com/user-attachments/assets/e219106e-281a-4de3-a035-c51d0cf2816b" width="300" height="650"/>
<img src="https://github.com/user-attachments/assets/bedb4c79-3e63-4cb2-abf0-03733dcd560c" width="300" height="650"/>




