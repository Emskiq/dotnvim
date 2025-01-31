# My Neovim Configuration

## Setup

### Prerequisites

- Neovim version > 0.9.0<br>
  (version of the initial commit is 0.10.0-devXXXX)

### Installation
0. Remove/backup any existing Neovim configurations, that are located in:
   
    `~/.config/nvim`

    `~/.local/share/nvim`
1. Clone this repository into your Neovim configuration directory:

    ```bash
    git clone https://github.com/Emskiq/dotnvim.git ~/.config/nvim
    ```
2. Packer installation
    ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
3. Start Neovim and wait for it to fail, after that execute the following command:

   ```vim
   PackerSync
   ```

4. Restart Neovim and everything should be fine

<br/>

<br/>

> **_Note for Solidity LSP Support:_** Ensure you have the latest version of Node.js and npm installed.
>
> Moreover Install the Solidity language server globally using npm:
>
>    ```bash
>    npm install @ignored/solidity-language-server -g
>    ```
>
> After installation, the language server's standalone executable is available. In the neovim config, I am using the following _command_:
>
>    ```bash
>    nomicfoundation-solidity-language-server --stdio
>    ```
>
>    This command is necessary for the lspconfig to run the Solidity language server correctly.


<br/>

<br/>

> **_Note for TypeScript LSP Support:_** Ensure you have the latest version of Node.js and npm installed.
>
> Moreover Install `typescript` and `typescript-language-server` using npm:
>
>    ```bash
>    sudo npm install -g typescript typescript-language-server
>    ```
