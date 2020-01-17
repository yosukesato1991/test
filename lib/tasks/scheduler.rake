

1


投稿
登録したメールアドレスに確認メールを送りました。登録手続きを完了してください。 再送する 


 
「今日雨降るよちゃん」を作ってみよう！【初学者向け】〜Ruby on RailsによるLINE botチュートリアル②〜 

32

ゆうすけ
2018/06/29 13:48 フォローする 
購入済 
こんにちは。ゆうすけです。
僕はこれまでにチュートリアルを２つ書いてきており、これが第３弾となります！
以前のチュートリアルはこちらです。
第１弾：【Big Tweetチュートリアル】Ruby on Railsで簡単なサービスを作ってみよう！（初学者向け）
第２弾：LINE botチュートリアル【初学者向け】 〜Ruby on Railsでアイデアtweetを作ってみよう〜
1. はじめに
1-1. 今日雨降るよちゃんとは
「東京で雨が降りそうな日の朝7時にLINEでメッセージが届く」LINE botです。

メッセージはこのように届きます。

自分が欲しいなと思ったLINE botを作ったところ、半日でLINE API 無料枠上限50人のお友達登録と予想外の反響をいただきました。
今日雨降るよちゃんについての詳細についてはこちらのブログに書きましたのでご興味ある方はご覧ください。
Ruby on Railsで雨が降る日の朝にメッセージで教えてくれるLINE bot「今日雨降るよちゃん」を作りました - 銀行員からのRailsエンジニア
自分が欲しいと思ったLINE botを作ってみたところ、半日でLINE APIの無料枠の上限のお友達50人と予想外の反響を
ysk-pro.hatenablog.com


1-2. チュートリアルを作成したきっかけ
今日雨降るよちゃんの友達登録数が上限の50人になってからも、お友達登録したかった、、、と言ってくださる方がたくさんいました。
また、少しのRailsの知識さえあれば作れるものなので、みなさんに今日雨降るよちゃんファミリーを作っていただけたら一番楽しいかなと思い、チュートリアルを作成することにしました。
第１弾、第２弾のチュートリアルも僕が思った以上に多くの方に読んでいただいており、自分で簡単なサービスを作りたい！という方はたくさんいらっしゃることが分かったので、これからもチュートリアルのバリエーションを増やしていきたいと思っています。

1-3. ideaツイートチュートリアルとの違い
第２弾のideaツイートチュートリアルでも、LINE botを題材にしておりました。
ideaツイートチュートリアルに以下の要素をプラスしたのが、本チュートリアルとなります。
・LINE botから能動的にメッセージを送信する機能
　ideaツイートチュートリアルでは、受け取ったメッセージへの返信機能のみを実装していました。本チュートリアルでは、返信だけではなく能動的なメッセージの発信機能も実装します。
・決まった時間に定期的な処理をする機能
　本チュートリアルでは毎朝7時に処理をする機能を実装します。時間・間隔は簡単に変更可能です。
・外部から天気情報を取ってくる機能
　ideaツイートチュートリアルでは、返信する元となる情報はあらかじめコードに全て書いていました。本チュートリアルでは、外部の天気情報を取得して、その情報を元にメッセージの返信・発信をする機能を実装します。
また、このチュートリアルでは、実際に動いている今日雨降るよちゃんのコードを全て開示し、同じものを作っていきます。

1-4. このチュートリアルをすればできるようになること
1-3の内容とも重複しますが、以下のことができるようになります。
・ユーザーからのメッセージに返信すること
　- メッセージの種類（テキスト・画像等）によって返信を変えること
　- テキストの中身によって返信を変えること
・ユーザーからのメッセージの送信がなくても、LINE botから、自分で決めたタイミングでメッセージを送ること
・外部から情報を取得して自分のサービスで利用すること
これらを組み合わせれば、作ることができるLINE botは皆さんのアイデア次第で無限にあると思います！

1-5. 想定対象者
・今日雨降るよちゃんを使いたかったけれども人数制限で登録できなかった方
・Ruby on Railsの基本的なことは学んでおり、自分で何か作ってみたい方
・1-4の項目のことを出来るようになりたい方

1-6. 想定所要時間
スムーズに進めば５時間程度で作成可能だと思います。
１日で気軽に作れます！
質問等には可能な範囲でGitHub上、Twitter DMにて回答させていただきます。

1-7. 本チュートリアル実施後の姿
「自分で作ったサービス」が手に入ります。
（このチュートリアルで作成したLINE botはどんどんアレンジして、どんどん公開して下さい！僕の許可は一切不要です。）
自分で作成したサービスをアピールして、プログラミング歴６ヶ月で自社サービス開発のRailsエンジニアになることができた転職活動についてはこちらのnoteに書いておりますのでご興味ある方は是非読んでみてください。
プログラミング歴6ヶ月の僕が自社サービスRailsエンジニアになりました！〜実際の転職活動について〜

1-8. 注意事項
・コードがベストな書き方ではない可能性があります。
・開発環境については各自ご準備お願いします。

1-9. オリジナルLINE botを公開された方のご紹介（2018/9/14・2018/10/15・2019/8/5追記）
本チュートリアルでオリジナルのLINE botを作って公開されている方、いただいたご感想をご紹介します！
 
 
 
 
では早速作っていきましょう！
自分で作ったものが動いて、人に使ってもらえるとめちゃくちゃ嬉しいですよ！！

2. 実装
＜2. 実装 の目次＞
2-1. 質問の仕方について
2-2. Ruby、Railsのバージョンを合わせる
2-3. Rails new
2-4. 最低限の設定
2-5. Gemファイルの設定
2-6. GitHubへプッシュ
2-7. モデル作成
2-8. Rakeタスク作成
2-9. コントローラ作成
2-10. ルーティングの設定
2-11. Herokuへデプロイ
2-12. LINE botアカウント作成・設定
2-13. 環境変数の設定
2-14. Heroku Scheduler設定
2-15. LINE bot動作確認
2-1. 質問の仕方について
以下リンクのGitHubのissue、もしくはTwitter DMにてお願いします。
GitHub issueはこちらです。

右下の「New issue」を選択し、そちらに質問内容を投稿お願いします。
僕のTwitterアカウントはこちらです。

2-2. Ruby、Railsのバージョンを合わせる
本チュートリアルでは、Ruby 2.5.1、Rails 5.2.0 のバージョンにて進めます。
以下の記事等をご参考にバージョンを合わせていただきますようお願いします。
rbenvでrubyのバージョンを切り替える - Qiita
## 現在のrubyのバージョンを確認 ``` $ ruby --version ruby 2.1.1p76 (201
qiita.com

バージョンが合っていないと、チュートリアル通りに進めても予期せぬエラーが発生することがあるので、面倒ですが必ず実施お願いします。

2-3. Rails new
任意のフォルダ内で次のコマンドでrails newします。
アプリケーション名はご自身で命名ください。
$ rails new [アプリケーション名] -d postgresql
データベースは「-d postgresql」でpostgreを指定をしています。

2-4. 最低限の設定
config/application.rb
require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Railnotice
  class Application < Rails::Application
    config.load_defaults 5.2

    # 追加
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
  end
end
# 追加 以下の2文を追加しています。
初期表示されているコメントについては消去してしまっても問題ありません。
（不要なコメントは消去した方が見通しが良くなります）

2-5. Gemファイルの設定
Gemfile
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# ①.env
gem 'dotenv-rails'

# ②LINE bot
gem 'line-bot-api'
初期コメントは全て消去し、①・②を追加しています。
①環境変数を管理するために使用します。
②LINE bot 作成に使用します。
先ほど作成したアプリケーションのディレクトリに移動して、以下コマンドでGemfileのインストールを行います。
$ bundle install

2-6. GitHubへプッシュ
GitHub未登録の方は、以下のサイト等を参考に、登録・SSH設定をお願いします。
GitHubの登録手順。SSH設定＆リポジトリをclone, pushまで解説

vdeep.net

ログイン後トップページから「New Repository」を選択し、リポジトリを作成します。
その後以下コマンドを順に打っていきます。
$ git init
$ git add .
$ git commit -m "first commit"
$ git remote add origin [リポジトリ作成後に表示されるコード。僕の場合はgit@github.com:ysk1180/rainnotice.git]
$ git push origin master

2-7. モデル作成
LINE botから能動的にメッセージを送る際には、送信先の「ID」が必要となります。
（※ このIDは普段使っているLINEのIDとは別のものです。）
このIDは友達登録された際に取得することができ、取得したIDを保存しておく必要があるのでDBを作ります。
以下コマンドでモデルファイルを作ります。
$ rails g model User line_id:string
db/migrate 配下にマイグレーションファイルができるので、マイグレーションファイルを編集します。
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :line_id, null: false #①

      t.timestamps
    end
  end
end
line_idは必須項目とするので、①の箇所に null: false を追記しています。
以下コマンドで、DBを作成します。
$ rails db:create
$ rails db:migrate

2-8. Rakeタスク作成
毎朝7時に雨が降るかどうか調べてメッセージを送るという機能を作ります。
サーバーのHerokuの「Heroku Scheduler」というアドオンを使うと、自分の決めたタイミングで今から作るRakeタスクファイルを実行することができます。
天気情報は、こちらのサイトで提供していただいている、xmlファイルを使用させていただきました。
当日の東京エリアの降水確率（6~12時、12~18時、18~24時）のどれか１つが20%以上であった場合にメッセージを送信しています。
大きな流れは、天気情報を取得し、降水確率の条件が合致した場合にメッセージを送信しています。
コードの細かい説明は極力コード内にコメントしています。
以下コマンドで、Rakeタスクファイルを作ります。
$ rails g task scheduler
lib/tasks/scheduler.rake
desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  require 'line/bot'  # gem 'line-bot-api'
  require 'open-uri'
  require 'kconv'
  require 'rexml/document'

  client ||= Line::Bot::Client.new { |config|
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
  }

  # 使用したxmlデータ（毎日朝6時更新）：以下URLを入力すれば見ることができます。
  url  = "https://www.drk7.jp/weather/xml/13.xml"
  # xmlデータをパース（利用しやすいように整形）
  xml  = open( url ).read.toutf8
  doc = REXML::Document.new(xml)
  # パスの共通部分を変数化（area[4]は「東京地方」を指定している）
  xpath = 'weatherforecast/pref/area[4]/info/rainfallchance/'
  # 6時〜12時の降水確率（以下同様）
  per06to12 = doc.elements[xpath + 'period[2]'].text
  per12to18 = doc.elements[xpath + 'period[3]'].text
  per18to24 = doc.elements[xpath + 'period[4]'].text
  # メッセージを発信する降水確率の下限値の設定
  min_per = 20
  if per06to12.to_i >= min_per || per12to18.to_i >= min_per || per18to24.to_i >= min_per
    word1 =
      ["いい朝だね！",
       "今日もよく眠れた？",
       "二日酔い大丈夫？",
       "早起きしてえらいね！",
       "いつもより起きるのちょっと遅いんじゃない？"].sample
    word2 =
      ["気をつけて行ってきてね(^^)",
       "良い一日を過ごしてね(^^)",
       "雨に負けずに今日も頑張ってね(^^)",
       "今日も一日楽しんでいこうね(^^)",
       "楽しいことがありますように(^^)"].sample
    # 降水確率によってメッセージを変更する閾値の設定
    mid_per = 50
    if per06to12.to_i >= mid_per || per12to18.to_i >= mid_per || per18to24.to_i >= mid_per
      word3 = "今日は雨が降りそうだから傘を忘れないでね！"
    else
      word3 = "今日は雨が降るかもしれないから折りたたみ傘があると安心だよ！"
    end
    # 発信するメッセージの設定
    push =
      "#{word1}\n#{word3}\n降水確率はこんな感じだよ。\n　  6〜12時　#{per06to12}％\n　12〜18時　 #{per12to18}％\n　18〜24時　#{per18to24}％\n#{word2}"
    # メッセージの発信先idを配列で渡す必要があるため、userテーブルよりpluck関数を使ってidを配列で取得
    user_ids = User.all.pluck(:line_id)
    message = {
      type: 'text',
      text: push
    }
    response = client.multicast(user_ids, message)
  end
  "OK"
end