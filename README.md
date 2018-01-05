# kusodokata-rails

変態糞土方による並外れた文才によって生み出された名文から新しい文章を生み出すアプリ

## Requirements

### Language runtimes

- ruby: v2.4.3
- node.js: v8.9.4
  - [yarn](https://github.com/yarnpkg/yarn): v1.3.2

### System dependencies

- [rbenv](https://github.com/rbenv/rbenv)
- [ndenv](https://github.com/riywo/ndenv)
- [direnv](https://github.com/direnv/direnv)
- [mecab](http://taku910.github.io/mecab/)

## Development

### Setup environment

```shell
$ cd project
$ bin/setup
```

### Launch development server and processes

```shell
$ cd project
$ bin/guard
```

[guard](https://github.com/guard/guard) - a command line tool to easily handle events on file system modifications.

Processes:

- Bundler: `bundle install` automated
- Rails server(port: 3000): web application server
- Gulp: webpack js building proccess
- RSpec: run specs with automatically

### Linter and formatters

#### for ruby

```shell
$ rubocop
# or `rubocop -a` to auto fix
```

#### for js

```shell
$ gulp lint
# or `gulp fix` to auto fix
```
