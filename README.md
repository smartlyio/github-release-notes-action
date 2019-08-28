# GitHub Release Notes Action

Publish changelog and release notes using [Gren](https://github.com/github-tools/github-release-notes).

## Usage

Configure Gren usign `.grenrc` in your repository and run this action in GitHub actions workflow:

```yaml
name: Release notes

on: [release]
jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: smartlyio/github-release-notes@v1.0.0
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
