# WIZ_ARC

## ローカル実行

### 初回準備

```sh
docker-compose build
docker-compose up

# 別窓実行
docker-compose run api rails db:create
docker-compose run api rails db:migrate
```

### 起動

```sh
docker-compose up
```

http://localhost:9000 に接続

### 終了

```sh
docker-compose down
```

### コマンド実行

```sh
docker-compose run api {command}
```
