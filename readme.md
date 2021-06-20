# laravel 最小開発環境

- laravelの環境を最初から作れるように git内には何も入れない
  

# laravelインストール


```sh
docker-compose build
docker-compose run app composer create-project laravel/laravel myapp
docker-compose run app bash -c 'mv myapp/* myapp/.[^\.]* .; rm -rf myapp'
```

# サーバ起動

```sh
docker-compose up
```

# dbをsqliteにする

.envを編集する
```
DB_CONNECTION=sqlite
# DB_HOST=127.0.0.1
# DB_PORT=3306
# DB_DATABASE=homestead
# DB_USERNAME=homestead
# DB_PASSWORD=secret
```

# マイグレーション
```sh
docker-compose exec app php artisan migrate
```
