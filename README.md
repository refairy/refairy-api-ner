<h2>소개</h2>
대한민국 온라인 수호 프로젝트, 리페어리의 API NER 서버입니다.

<br><h2>시작하기</h2>

환경변수에 $PORT를 지정해 주어야 합니다.
이후 도커로 이미지를 빌드한 후 컨테이너를 실행하면 됩니다.

```
docker build -t refairy-api-ner .
docker run -it -p $PORT:$PORT refairy-api-ner
```
