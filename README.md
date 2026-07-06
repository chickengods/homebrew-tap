# chickengods homebrew tap

private tap for [resin](https://resin.fyi).

## install

you need read access to `chickengods/resin` and `chickengods/homebrew-tap`, plus github ssh keys (or `gh auth setup-git`).

```sh
brew tap chickengods/tap git@github.com:chickengods/homebrew-tap.git
brew install resin
resin signup <invite-code>
resin
```

## upgrade

```sh
brew update && brew upgrade resin
```

## releasing (maintainers)

1. tag the main repo: `git tag v0.x.y <sha> && git push origin v0.x.y`
2. bump `tag:` and `revision:` in `Formula/resin.rb`, push here
