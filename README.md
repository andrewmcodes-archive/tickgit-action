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
  audit:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: 'Tickgit'
        uses: andrewmcodes/tickgit-action@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
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
