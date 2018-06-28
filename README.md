# README

## 17sys_tan(しすたん)

- [x] 環境開発完了
- [ ] トップページ
- [x] ログイン・ログアウト・新規登録
- [x] セッション保持関連の確認
- [x] ワードの表示
- [x] ワードの検索
- [x] ワードの登録
- [x] ワードの編集
- [ ] 全体確認

### モジュール

* [common-] 共通機能
* [dic-] 辞書機能
* [my-] 個別機能


## 導入手順

### クローンする

```
$ https://github.dip-net.co.jp/k-waragai/17sys_tan.git
```

### .envを作成する

```
$ cp .env.example .env
```

### .envを編集する

### 立ち上げる

```
$ docker-compose up -d
```

### bundle install

```
$ docker-compose run --rm app bundle install
```

### db作成をする

```
$ docker-compose run --rm app bundle exec rake db:create
$ docker-compose run --rm app bundle exec rake db:migrate
```

### コンパイルする(のちに自動化)

```
$ docker-compose run --rm app bundle exec rake assets:precompile
```

### 表示する

http://localhost
