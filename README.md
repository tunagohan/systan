# README

## env 作成

.envファイルの作成が必須です。
direnvでも可能です。

以下は例になります。
DB_HOSTは `127.0.0.1固定` です

```
MYSQL_DATABASE=systan
MYSQL_USER=systan
MYSQL_PASSWORD=systan
MYSQL_ROOT_PASSWORD=systan
WEB_PORT=3000
DB_PORT=3456
DB_HOST=127.0.0.1
```

## 構成紹介

フルDockerではRailsのレスポンスがとても重く
使い勝手が非常に悪かったため、ミドルウェアのみをDocker化し
Rubyはローカルのもを使用する形に変更しました。

| Name | Version |
|:--:|:--:|
| MySQL | 5.7.21 |
| Ruby | 2.5.1 |
| Rails | 5.2.0 |


## 初めかた

※ローカルにrubyの2.5.1が入っているか `ruby -v` で確認後進めてください

### おもむろに以下のコマンドを叩いてください

```
$ docker-compose up -d
```

### bundle installしておく

```
$ bundle install --path=vendor/bundle
```

### dbをcreateしmigrateする

```
$ bundle exec rake db:create db:migrate
```

### serverを立ち上げる

PORT番号はenvで指定した番号と同じにしてください。
direnvが入っていれば以下のようなコマンドでも平気です


```
$ bundle exec rails s -b 0.0.0.0 -p $WEB_PORT
```
