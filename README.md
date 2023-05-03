## TERMUX BACKUP RESTORATION
### Install the dependencies
- Setup
  - `apt update && apt upgrade`
  - 
- Zsh
  - `pkg install zsh`
  - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
 After installation source the .config/zsh/.zshrc inside $HOME/.zshrc
using `source ~/.config/zsh/.zshrc`

### Notes on symlink
- 1. `$termux-setup-storage`
- 2. In `home` directory `mkdir Media && ln -sf /storage/shared/Media ~/Media `
