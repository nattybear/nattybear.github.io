---
date: 2024-10-30
---

## cabal에서 의존성 버전을 동결하는 방법

cabal은 프로그래밍 언어 하스켈의 패키지 관리자이자 빌드 도구이다.[^1]

[^1]: [https://www.haskell.org/cabal/](https://www.haskell.org/cabal/)

의존성 패키지 버전을 최신으로 업데이트 하려면 다음과 같이 입력한다.

```
cabal update
```

그런데 업데이트 이후에 의존성이 깨져서 멀쩡히 잘 되던 프로젝트 빌드가 실패할 수 있다. 이때 다음과 같은 명령어를 이용하면 프로젝트의 의존성 패키지 버전을 현재 시점에서 동결할 수 있다.[^2]

[^2]: [https://cabal.readthedocs.io/en/stable/cabal-commands.html#cabal-freeze](https://cabal.readthedocs.io/en/stable/cabal-commands.html#cabal-freeze)

```
cabal freeze
```

위 명령어를 입력하면 프로젝트에 `cabal.project.freeze` 파일이 생성되고 이후에는 패키지 버전이 최신으로 업데이트 되더라도 해당 프로젝트는 `cabal.project.freeze` 파일만을 참조해서 빌드를 시도할 것이다.
