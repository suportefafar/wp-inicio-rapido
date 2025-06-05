## WP Inicio Rápido

Repo para inicio rápido do WordPress com o Docker Compose e MySQL

## Uso

Se não tiver docker e docker-compose, utilize [este script](https://github.com/suportefafar/docker_installs).

Uma vez já instalado, execute:

```
git clone https://github.com/suportefafar/wp-inicio-rapido.git
cd wp-inicio-rapido/
./up.dev.sh
# Ou
./up.prod.sh

```

## Incluso
Segue a lista de componentes e práticas inclusas:  

Para o ambiente dev:
- Stage dev no Dockerfile
- bind mount dos arquivos WP
- bind mount do arquivo de configurações PHP(local.ini)
- Correção de permissão das pastas montadas localmente
- Banco de dados (MySQL)
- PHPMyAdmin
- XDebug3

Para o ambiente prod:
- Healthcheck
- Autoheal
- Secrets para senha do bando de dados

Básico de ambos:
- Uso de variáveis de ambientes
- Dockerfile multi-stage

## Troubleshooting

Caso tenha problema de premissão ao executar o comando a cima, utilize-o com **sudo**:

```
sudo ./up.dev.sh
# Ou
sudo ./up.prod.sh
```

Ou dê premissão ao seu usuário para utilizar o docker, colocando-o no grupo _docker_:

```
sudo usermod -aG docker ${USER}
```

Para aplicar a mudança execute o seguinte comando:

```
su - ${USER}
```

Se não funcionar, reinicie ou faça logout.

Para verificar se foi feito com sucesso, execute no terminal:

```
groups
```

Esse comando deve retornar a lista de grupos que o usuário atual se encontra.
O grupo _docker_ deve ser um deles.
Exemplo:

```
chico adm cdrom sudo dip plugdev users lpadmin docker
```
## Referências
- https://www.wpdiaries.com/wordpress-with-xdebug-for-docker/
- https://jasonterando.medium.com/debugging-with-visual-studio-code-xdebug-and-docker-on-windows-b63a10b0dec
- https://docs.docker.com/compose/