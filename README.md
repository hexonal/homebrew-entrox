# Entrox Homebrew Tap

This repository is managed by the Entrox release workflow.

```bash
ENTROX_HOMEBREW_TAP="$(brew --repository)/Library/Taps/hexonal/homebrew-entrox"
if [ -d "$ENTROX_HOMEBREW_TAP/.git" ]; then
  git -C "$ENTROX_HOMEBREW_TAP" fetch origin
  git -C "$ENTROX_HOMEBREW_TAP" reset --hard origin/main
  git -C "$ENTROX_HOMEBREW_TAP" clean -fd
elif [ -d "$ENTROX_HOMEBREW_TAP" ]; then
  rm -rf "$ENTROX_HOMEBREW_TAP"
fi
HOMEBREW_NO_AUTO_UPDATE=1 brew tap hexonal/entrox
(HOMEBREW_NO_AUTO_UPDATE=1 brew trust hexonal/entrox || true)
HOMEBREW_NO_AUTO_UPDATE=1 brew install hexonal/entrox/entrox
```
