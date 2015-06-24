# 明石高専 学生会Webページ

明石高専 学生会Webページのソースコードです。仮置き。


## 記事の新規作成

1. 下のコマンドで新しく記事を作ります。`title`のところには記事のタイトルを入れます。日本語でOK。

  ```
  rake generate_news[title]
  ```

2. `data/news.yml` を編集します。初期状態は

  ```
  - date: （作成日）
    title: （入力したタイトル）
    content: |-
      
  ```

  となっているので、`content`の部分に内容を書きます。

3. ビルドします。

  ```
  bundle exec middleman build
  ```

  > 静的サイトのコードを出力する準備ができている, または "ブログモード" で 静的ブログをホストするような場合, サイトをビルドする必要があります。 
    コマンドラインを使い, プロジェクトフォルダの中から middleman build を実行してください --https://middlemanapp.com/jp/basics/build_and_deploy/

  とのことです。

4. commitします。

  ```
  git add .
  git commit -m "COMMIT_MESSAGE"
  ```

5. Herokuにpushします。

  ```
  git push heroku master
  ```

  Herokuアプリの停止・再起動は以下のとおりです。

  ```
  heroku maintenance:on
  heroku maintenance:off
  ```
