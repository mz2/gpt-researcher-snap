# gpt-researcher Snap Packaging

This project provides Snap packaging for the `gpt-researcher` Python CLI application.

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

## Project Structure
- `snap/snapcraft.yaml`: Snap packaging configuration
- `.github/copilot-instructions.md`: Copilot custom instructions

## Notes
- Make sure the `gpt-researcher` Python package is available in this directory or specify the correct source.
- Update the `command` field in `snapcraft.yaml` if the entry point differs.
