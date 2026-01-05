# Homebrew Nexo

This is the official Homebrew Tap for **Nexo**, a Smart AI Assistant for Everyone.

## Installation

To install Nexo via Homebrew, run the following commands in your terminal:

```bash
# Tap the repository
brew tap nexo-agent/nexo

# Install the cask
brew install --cask nexo
```

## Troubleshooting

### "Nexo is damaged and can't be opened"

Since the application is currently not notarized by Apple, macOS might prevent it from opening and show a "damaged" warning. To fix this, run the following command to remove the quarantine attribute:

```bash
xattr -cr /Applications/Nexo.app
```

## Development Workflow

If you are a maintainer and need to update or fix the cask, follow this standard process:

1. **Modify the Cask**: Edit `Casks/nexo.rb` with your changes (version update, URL, logic, etc.).
2. **Commit and Push**:
   ```bash
   git add Casks/nexo.rb
   git commit -m "Update nexo cask"
   git push origin main
   ```
3. **Sync Homebrew**:
   ```bash
   brew update
   ```
4. **Reinstall/Upgrade**:
   - If the version hasn't changed: `brew reinstall --cask nexo`
   - If the version was increased: `brew upgrade --cask nexo`

---

Built with ❤️ by the Nexo Team.
