### <div title="Nvim config" align="center"><h6>${{\color{gold}\Huge{\textsf{  Personal {\color{lightskyblue}N{\color{yellowgreen}vim {\color{Goldenrod}config {\color{#CEE7FF}(Lazy💤 {\color{#00A6ED}plugin manager) \}}}}}}}}}\$<h6></div>
---
### Prerequisites 🛠️ **`npm`**,**`ripgrep`**,**`python`**
```bash
sudo apt install -f npm ripgrep python3-venv python3.12-venv -y
```

<details><summary>arch</summary>

```
rm -rf ~/.local/share/nvim && rm -rf ~/.local/state/nvim
cd ~/.config
rm -rf nvim
sudo pacman -Syu npm ripgrep python-virtualenv --noconfirm
git clone https://github.com/Paulobox/nvim
```

</details>

---

### set-up / go to folder and clone ⚙️
Linux:   ~/.config <br>
Windows:   C:\Users\user1\AppData\Local <br> %userprofile%\AppData\Local

```bash
git clone https://github.com/Paulobox/nvim
```

---

###### #note Windows installation is more complicated🤓, some of **`lsp`** installations on Windows (for Mason plugin) needing Anaconda or [(Miniconda)](https://docs.anaconda.com/free/miniconda/miniconda-install/) prompt + you need clangd compiler on Windows for lsps **`mingw`** <br> 
1. choco install mingw, choco install fzf.
2. [node.js](https://nodejs.org/en/download) <br>
3. npm install -g npm <br>
4. npm install -g typescript-language-server typescript

---

[WakaTime](https://wakatime.com/neovim)
```
cd ~/.config/nvim/lua/plugins
echo -e 'return {\n    "wakatime/vim-wakatime",\n    lazy = false,\n}' > wakatime.lua
```

enter your [wakapi](https://wakatime.com/settings/api-key) key
:WakaTimeApiKey

---

### Important ⚠️
###### #note for Windows, choco install make
on Windows go to C:\Users\yourUsername\AppData\Local\nvim-data\lazy\telescope-fzf-native.nvim and run **`make'** command in powershell for telescope fzf plugin to work and avoid errors. <br><br>
to setup chatgpt:
- on Linux you can you use [password-store](https://www.passwordstore.org)  how to setup pass [youtube video](https://www.youtube.com/watch?v=FhwsfH2TpFA)<br>
<!-- ►on Windows to quickly set up place your api key in Documents in file called **`openaikey.txt`** in **`Documents folder`**<br> -->
<!-- ►storing passwords in txt files is not safe.<br> -->
- 🚨 If you don't want to setup chatgpt just **remove chatgpt.lua** file from plugins to avoid errors.

- to ignore diagnostics lsp errors press `leader` + `id` :
```
:lua vim.diagnostic.config({virtual_text=false})
```
