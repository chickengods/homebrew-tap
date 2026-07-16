# Resin Homebrew tap

Public Homebrew tap for [Resin](https://resin.fyi).

## Install

```sh
brew install chickengods/tap/resin
resin signup <invite-code>
resin
```

The production binary connects only to Resin's hosted server at
`https://resin-server.fly.dev`. Repository development builds use the separate
`resin-dev` command.

## Upgrade

```sh
brew update
brew upgrade resin
```

## Release status

The current `v0.1.1` public preview is unsigned and not Apple-notarized. Published
archives and checksums live in this repository's
[GitHub Releases](https://github.com/chickengods/homebrew-tap/releases).

## Releasing

1. Build both macOS architectures from the tagged source commit.
2. Publish immutable archives and checksums in this repository's GitHub Releases.
3. Update each formula URL, checksum, version, and offline identity assertions.
4. Run `brew style`, `brew audit`, and a clean formula install before publishing.
