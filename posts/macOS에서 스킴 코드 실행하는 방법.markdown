---
date: 2024-11-21
---

다음과 같이 시스템에 `mit-scheme`을 설치한다.

```
brew update
brew install mit-scheme
```

터미널에 `mit-scheme`을 입력해서 인터프리터를 실행하고 다음과 같이 입력해서 저장된 코드를 불러올 수 있다.

```
(load "example.scm")
```

다음 코드는 책 《Essentials of Programming Languages》에 나오는 예제이다.

```scheme
(define in-S?
  (lambda (n)
    (if (zero? n) #t
      (if (>= (- n 3) 0)
        (in-S? (- n 3))
        #f))))
```
