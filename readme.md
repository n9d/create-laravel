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

# マイグレーション
```sh
docker-compose exec app 
```
