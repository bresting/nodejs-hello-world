# nodejs-hello-world
도커 환경 테스트를 위해 만든 simple NodeJS hello 어플리케이션

```bash
1. build
 docker build -t toowis/node-hello-world .

2. run
docker run -d -p 3080:80 --name node-hello-world toowis/node-hello-world

3. exex
http://localhost:3080
```
