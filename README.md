# My Neovim Configuration

## Setup

### Prerequisites

- Neovim version > 0.9.0
  
  (version of the initial commit is 0.10.0-devXXXX)

### Installation
0. Remove/backup any existing Neovim configurations
   
    `~/.config/nvim`

    `~/.local/share/nvim`
2. Clone this repository into your Neovim configuration directory:

    ```bash
    git clone https://github.com/Emskiq/dotnvim.git ~/.config/nvim
    ```
3. Packer installation
    ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
4. Start Neovim and wait for it to fail, after that execute the following command:

   ```vim
   PackerSync
   ```

5. Restart Neovim and everything should be fine
