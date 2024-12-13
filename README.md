# My NeoVim Config
![My-neo-vim-config](https://github.com/user-attachments/assets/ba885cbe-19d1-493a-a661-c228d5320921)

Vim/NeoVim is by far best IDE i have ever used till now, my productivity has been increased like 10 times (which is huge), even though I have touched the tip of vim iceberg here is my NeoVim configurations files
for beginners (Yes, I'm talking about myself), in future more changes will be added and will make this config a lot better. 
 
## Installation Steps

### Step 1: Installing NeoVim
Follow the steps for your respective operating system to install NeoVim.

#### Windows
1. Install **choco** (if not already installed):
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; \Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```
2. Install NeoVim using choco:
   ```powershell
   choco install neovim
   ```

Alternatively, using Scoop:
1. Install Scoop (if not already installed):
   ```powershell
   Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
   ```
2. Install NeoVim using Scoop:
   ```powershell
   scoop install neovim
   ```

#### Linux
1. Use your package manager to install NeoVim:
   - **Ubuntu/Debian**:
     ```bash
     sudo apt update && sudo apt install neovim
     ```
   - **Fedora**:
     ```bash
     sudo dnf install neovim
     ```
   - **Arch**:
     ```bash
     sudo pacman -S neovim
     ```

#### macOS
1. Install Homebrew (if not already installed):
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Install NeoVim using Homebrew:
   ```bash
   brew install neovim
   ```

### Step 2: Installing Plugins and Tools
This configuration uses several plugins and tools to enhance your NeoVim experience.

#### 1. **Packer** (Plugin Manager)
Packer is used to manage plugins in this configuration.
1. Install Packer:
   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```
2. Open NeoVim and run `:PackerSync` to install plugins.

#### 2. **Tree-sitter** (Syntax Highlighting and Code Parsing)
1. Install Tree-sitter CLI:
   ```bash
   npm install -g tree-sitter-cli
   ```
2. Add Tree-sitter configurations in your NeoVim setup.
3. Open NeoVim and run `:TSInstall <language>` to install language parsers.

#### 3. **Catppuccin** (Theme)
1. Install the Catppuccin theme via Packer:
   Add the following in your `packer.nvim` configuration:
   ```lua
   use { "catppuccin/nvim", as = "catppuccin" }
   ```
2. Apply the theme in your NeoVim configuration:
   ```lua
   vim.cmd("colorscheme catppuccin")
   ```

#### 4. **Telescope** (Fuzzy Finder)
1. Install Telescope via Packer:
   Add the following in your `packer.nvim` configuration:
   ```lua
   use {
       'nvim-telescope/telescope.nvim',
       requires = { {'nvim-lua/plenary.nvim'} }
   }
   ```
2. Install Telescope dependencies:
   - Install `ripgrep`:
     - **Windows (choco)**:
       ```powershell
       choco install ripgrep
       ```
     - **Linux**:
       ```bash
       sudo apt install ripgrep
       ```
     - **macOS (Homebrew)**:
       ```bash
       brew install ripgrep
       ```
   - Install `fd`:
     - **Windows (choco)**:
       ```powershell
       choco install fd
       ```
     - **Linux**:
       ```bash
       sudo apt install fd-find
       ```
     - **macOS (Homebrew)**:
       ```bash
       brew install fd
       ```

### Step 3: Clone My Configuration
1. Backup your existing NeoVim configuration (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```
2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/my-neovim-config.git ~/.config/nvim
   ```

### Step 4: Launch NeoVim
1. Open NeoVim:
   ```bash
   nvim
   ```
2. Run `:PackerSync` to install all plugins.
3. Enjoy your new setup!

## Features
- **Tree-sitter** for modern syntax highlighting.
- **Catppuccin** theme for a visually pleasing UI.
- **Telescope** for powerful fuzzy finding.
- **Packer** for easy plugin management.

Feel free to customize and extend this configuration to suit your needs!
