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
