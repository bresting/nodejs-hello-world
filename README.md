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

## deploy
```
docker rmi -f $(docker images --filter=reference='reg.toowis.com/sandbox/toowis/node-hello-world' -q) ; \
export UUID=$(cat /proc/sys/kernel/random/uuid) && \
docker build . -t reg.toowis.com/sandbox/toowis/node-hello-world:${UUID:0:8} && \
docker login reg.toowis.com --username=admin --password=Harbor12345 && \
docker push reg.toowis.com/sandbox/toowis/node-hello-world:${UUID:0:8} && \
sed "s~IMAGE_VERSION~${UUID:0:8}~g" toowis-node-js.yaml > deploy_version_toowis-node-js.yaml && \
kubectl apply -f deploy_version_toowis-node-js.yaml
```
