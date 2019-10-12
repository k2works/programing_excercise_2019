# プログラミング演習 2019


## 概要

### 目的

### 前提

| ソフトウェア   | バージョン | 備考 |
| :------------- | :--------- | :--- |
| nodejs         | 10.16.3    |      |
| ruby           | 2.6        |      |

## 構成

- [構築](#構築)
- [配置](#配置)
- [運用](#運用)
- [開発](#開発)

## 詳細

### 構築

#### 開発パッケージのセットアップ

```bash
npm init -y
npm install --save-dev npm-run-all watch foreman cpx rimraf markdown-to-html
npm install --save-dev prettier eslint jshint cross-env @prettier/plugin-ruby
npm install --save-dev browser-sync connect-browser-sync nodemon
npx browser-sync init
touch Procfile
```

**[⬆ back to top](#構成)**

### 配置

**[⬆ back to top](#構成)**

### 運用

ドキュメント

```bash
npm run start:asciidocs
```

スライド

```bash
npm run start:slide
```

**[⬆ back to top](#構成)**

### 開発

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/k2works/programing_excercise_2019)

```bash
npm install
npm start
```

**[⬆ back to top](#構成)**

## 参照

- [nodejs](https://nodejs.org/ja/)
- [Bootstrap](https://getbootstrap.com/)
- [GitPitch](https://gitpitch.com/)
