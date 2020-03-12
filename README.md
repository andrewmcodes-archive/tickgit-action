<!-- Variables -->
[changelog]: /CHANGELOG.md
[coc]: /CODE_OF_CONDUCT.md
[contributing]: /CONTRIBUTING.md
[license]: /LICENSE.md

# Tickgit Action

![Version Number](https://img.shields.io/static/v1?label=Version&message=v0.0.1&color=blue)
![Linters](https://github.com/andrewmcodes/tickgit-action/workflows/Linters/badge.svg)
[![Changelog](https://github.com/andrewmcodes/rubocop-linter-action/workflows/Changelog/badge.svg)][changelog]

This GitHub Action runs [tickgit](https://github.com/augmentable-dev/tickgit) on your project.

## Usage

```yml
name: Tickgit

on: [push]

jobs:
  todos_to_stdout:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: "Tickgit - stdout"
        uses: andrewmcodes/tickgit-action@master
        with:
          version: latest
          csv: "false"

  todos_to_csv:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: "Tickgit - csv"
        uses: andrewmcodes/tickgit-action@master
        with:
          version: latest
          csv: "true"
      - uses: actions/upload-artifact@v1
        with:
          name: todos
          path: todos.csv
```

## Community

### Changelog

[View our Changelog][changelog]

### Contributing

[Contributing Guide][contributing]

### Code of Conduct

[Code of Conduct][coc]

### License

[MIT][license]
