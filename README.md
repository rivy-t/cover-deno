# README

<!-- spell-checker:ignore lcov genhtml -->

This repo exists to demonstrate that `deno coverage` generates incorrect results. To generate Deno coverage results:

```shell
> :: WinOS
> deno test -A --coverage=.coverage/profile.win
...
> deno coverage .coverage/profile.win --lcov > .coverage/profile.win.lcov
> call genhtml -o .coverage/html.win .coverage/profile.win.lcov --branch-coverage --function-coverage
...
```

or

```shell
$ # POSIX
$ deno test -A --coverage=.coverage/profile.nix
...
$ deno coverage .coverage/profile.nix --lcov > .coverage/profile.nix.lcov
$ genhtml -o .coverage/html.nix .coverage/profile.nix.lcov --branch-coverage --function-coverage
...
```

The sister repo at <https://github.com/rivy-t/cover-esm> contains the same code configured to compile with `npm` and `node`.

For comparison, to generate the correct coverage info:

```shell
> :: WinOS
> npm i --silent && npx nyc --silent ava && npx nyc report --reporter=text-lcov
```

For reference, see <https://github.com/denoland/deno/issues/9865> and <https://github.com/denoland/deno/issues/12826>.
