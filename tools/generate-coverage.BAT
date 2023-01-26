@setLocal
:: spell-checker:ignore (names) Deno ; (utils) genhtml ; (words) lcov
@cd %~dp0..
@set to=.coverage
@set os=win
@call deno test -A --coverage=%TO%/profile.%OS%
@call deno coverage %TO%/profile.%OS% --lcov > %TO%/profile.%OS%.lcov
@call genhtml -o %TO%/html.%OS% %TO%/profile.%OS%.lcov --branch-coverage --function-coverage
start "" %TO%/html.%OS%/index.html
