# Homebrew Lunex

This is the official Homebrew Tap for **Lunex**, a Smart AI Assistant for Everyone.

## Installation

To install Lunex via Homebrew, run the following commands in your terminal:

```bash
# Tap the repository
brew tap zen8labs/lunex

# Install the cask
brew install --cask lunex
```

## Troubleshooting

### "Lunex is damaged and can't be opened"

Since the application is currently not notarized by Apple, macOS might prevent it from opening and show a "damaged" warning. To fix this, run the following command to remove the quarantine attribute:

```bash
xattr -cr /Applications/Lunex.app
```

## Development Workflow

If you are a maintainer and need to update or fix the cask, follow this standard process:

1. **Modify the Cask**: Edit `Casks/lunex.rb` with your changes (version update, URL, logic, etc.).
2. **Commit and Push**:
   ```bash
   git add Casks/lunex.rb
   git commit -m "Update lunex cask"
   git push origin main
   ```
3. **Sync Homebrew**:
   ```bash
   brew update
   ```
4. **Reinstall/Upgrade**:
   - If the version hasn't changed: `brew reinstall --cask lunex`
   - If the version was increased: `brew upgrade --cask lunex`

---

Built with ❤️ by the Zen8labs Team.
