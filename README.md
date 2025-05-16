# Snap packaging for `gpt-researcher`

This project provides Snap packaging for the [gpt-researcher](https://github.com/assafelovic/gpt-researcher) Python CLI application.

## How to build the Snap

1. Ensure you have `snapcraft` installed:
   ```fish
   sudo snap install snapcraft --classic
   ```
2. Build the snap:
   ```fish
   snapcraft
   ```
3. Install the snap locally:
   ```fish
   sudo snap install gpt-researcher_*.snap --dangerous
   ```
4. Run the application:
   ```fish
   gpt-researcher --help
   ```

