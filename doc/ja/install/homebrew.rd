---
layout: ja
title: Homebrewでインストール
---
== Mac OS XでHomebrewを使ったインストール方法

Mac OS X のパッケージ管理システムのひとつである Homebrew と RubyGems を利用して
Rabbit をインストール、利用する手順について説明します。

=== 事前に準備するもの

* Intel Mac
* Mac OS X Leopard 以上
* Xcode と X11（XQuartzをインストール）

=== Homebrew のインストール

 $ ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

環境変数 PATH に /usr/local/bin を追加します。

==== brew install と brew link の実行

  $ brew install cairo
  $ brew link cairo
  $ brew install pango
  $ brew install gtk+
  $ brew install poppler --with-glib

=== Rabbit のインストール

gem install を実行します。

  $ sudo gem install rabbit
  $ sudo gem install rabbiter # Twitter連携機能を使う場合

=== 環境変数の設定

~/.bash_loginあるいは~/.zshenvで以下のようにDYLD_LIBRARY_PATH環境変数を設定します。

  export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib
