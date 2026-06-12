# Homebrew Cask for Anker Prime Utility

Install the signed and notarized Anker Prime Utility macOS app with Homebrew:

```sh
brew tap niiconn/ankerprimeutility-cask
brew install --cask anker-prime-utility
```

The app is distributed from the public Sparkle update endpoint:

```text
https://updates.niiconn.com/anker-prime-tool
```

## Updating the Cask

When a new app release is published, update `version` and `sha256` in
`Casks/anker-prime-utility.rb`.

```sh
shasum -a 256 AnkerPrimeUtility-<version>.zip
brew audit --cask --new anker-prime-utility
```
