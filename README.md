## COMANDOS UTILIZADOS

para validar o tamanho da minha imagem:
docker image ls

para buildar novamente após os ajustes no Dockerfile para ter uma imagem mais leve e mais segura
docker build -t node-test .

para criar meu conteiner
docker run -d -p 9090:8090 --name node-test node-test

para validar que a minha imagem ficou mais leve:
docker image ls