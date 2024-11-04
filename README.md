<h1 align="center">NvChad</h1>

<div align="center">
	<a href="https://nvchad.com/">Home</a>
  <span> • </span>
    	<a href="https://nvchad.com/docs/quickstart/install">Install</a>
  <span> • </span>
       	<a href="https://nvchad.com/docs/contribute">Contribute</a>
  <span> • </span>
	<a href="https://github.com/NvChad/NvChad#gift_heart-support">Support</a>
  <span> • </span>
        <a href="https://nvchad.com/docs/features">Features</a>
  <p></p>
</div> 

<div align="center">
 
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.10-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![Mutable.ai Auto Wiki](https://img.shields.io/badge/Auto_Wiki-Mutable.ai-blue?style=flat-square)](https://wiki.mutable.ai/NvChad/NvChad)
[![GitHub Issues](https://img.shields.io/github/issues/NvChad/NvChad.svg?style=flat-square&label=Issues&color=d77982)](https://github.com/NvChad/NvChad/issues)
[![Discord](https://img.shields.io/discord/869557815780470834?color=738adb&label=Discord&logo=discord&logoColor=white&style=flat-square)](https://discord.gg/gADmkJb9Fb)
[![Matrix](https://img.shields.io/badge/Matrix-40aa8b.svg?style=flat-square&logo=Matrix&logoColor=white)](https://matrix.to/#/#nvchad:matrix.org)
[![Telegram](https://img.shields.io/badge/Telegram-blue.svg?style=flat-square&logo=Telegram&logoColor=white)](https://t.me/DE_WM)

  </div>

## Showcase

![nvdash](https://github.com/user-attachments/assets/0c7e2c8f-8940-42ea-9c18-7456768d2d05)
<img src="https://nvchad.com/banner.webp">

<img src="https://nvchad.com/screenshots/onedark.webp">
<img src="https://nvchad.com/screenshots/rxyhn1.webp">

## What is it?

- NvChad is a neovim config written in lua aiming to provide a base configuration with very beautiful UI and blazing fast startuptime (around 0.02 secs ~ 0.07 secs). We tweak UI plugins such as telescope, nvim-tree etc well to provide an aesthetic UI experience. 

- Lazy loading is done 93% of the time meaning that plugins will not be loaded by default, they will be loaded only when required also at specific commands, events etc. This lowers the startuptime and it was like 0.07~ secs tested on an old pentium machine 1.4ghz + 4gb ram & HDD.

- NvChad is supposed to be used with its [starter config](https://github.com/nvchad/starter), so nvchad main repo ( this repo ) can be imported as a plugin via lazy's import feature and then you can easily use this repo's modules like autocmds etc.

## Theme Showcase

<details><summary> <b>Images (Click to expand!)</b></summary>

![4 themes](https://nvchad.com/screenshots/four_Themes.webp)
![radium 1](https://nvchad.com/screenshots/radium1.webp)
![radium 2](https://nvchad.com/screenshots/radium2.webp)
![radium 3](https://nvchad.com/screenshots/radium3.webp)


(Note: these are just 4-5 themes, NvChad has around 56 themes)
</details>

## UI related plugins used

<details><summary> <b>Images (Click to expand!)</b></summary>

<h3> Nvim-tree.lua </h3>

Fast file tree:

<kbd><img src="https://nvchad.com/features/nvimtree.webp"></kbd>

<h3> Telescope-nvim </h3>

A fuzzy file finder, picker, sorter, previewer and much more:

<kbd><img src="https://nvchad.com/features/telescope.webp"></kbd>

<h3> Our own statusline written from scratch  </h3>

[NvChad UI](https://github.com/NvChad/ui)

<kbd><img src="https://nvchad.com/features/statuslines.webp"></kbd>

<h3> Tabufline (our own pertab bufferline) </h3>

<kbd><img src="https://nvchad.com/features/tabufline.webp"></kbd>
- Here's a [video](https://www.youtube.com/watch?v=V_9iJ96U_k8&ab_channel=siduck) that showcases it.

<h3> NvCheatsheet ( our UI Plugin ) </h3>
<kbd> <img src="https://nvchad.com/features/nvcheatsheet.webp"/></kbd>

<h3> Modern Theme Picker </h3>
<kbd> <img src="https://github.com/user-attachments/assets/897e46f1-9ae2-4cc2-8fa2-64eff40a90dd" /> </kbd>
</details>

For detailed info list, check [features page](https://nvchad.com/docs/features)

## Plugins list

- Many beautiful themes, theme toggler by our [base46 plugin](https://github.com/NvChad/base46)
- Lightweight & performant ui plugin with [NvChad UI](https://github.com/NvChad/ui) It provides statusline modules, tabufline ( tabs + buffer manager) , beautiful cheatsheets, NvChad updater, hide & unhide terminal buffers, theme switcher and much more!
- File navigation with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Beautiful and configurable icons with [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- Git diffs and more with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) 
- NeoVim Lsp configuration with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/williamboman/mason.nvim)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- File searching, previewing text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autoclosing braces and html tags with [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- Useful snippets with [friendly snippets](https://github.com/rafamadriz/friendly-snippets) + [LuaSnip](https://github.com/L3MON4D3/LuaSnip).
- Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)

## History

- I (@siduck i.e creator of NvChad) in my initial days of learning to program wanted a lightweight IDE for writing code, I had a very low end system which was like 1.4ghz pentium + 4gb ram & HDD. I was into web dev stuff so many suggested me to use vscode but that thing was very heavy on my system, It took more ram than my browser! ( minimal ungoogled chromium ) so I never tried it again, sublime text was nice but the fear of using proprietary software XD for a linux user bugged me a lot. Then I tried doom-emacs which looked pretty but it was slow and I was lost within its docs, I tried lunarvim but too lazy to read the docs. Doom-emacs and lunarvim inspired me to make a config which is the prettiest + very fast and simple.

- I'm decent at ricing i.e customizing system and making it look pretty so I posted my neovim rice on [neovim subreddit](https://www.reddit.com/r/neovim/comments/m3xl4f/neovim_rice/), my neovim-dotfiles github repo blew up and then I had to come up with a name, I was amazed by the chad meme lol so I put NvChad as the name, the chad word in here doesn't literally mean the chad guy but in the sense such as chad linux vs windows i.e meaning superior, best etc. NvChad was made for my personal use but it gained some popularity which inspired me to make a public config i.e config usable by many and less hassle to update as everyone's going to use the same base config (NvChad) with their custom modifications (which are gitignored so that won't mess up), without the custom config stuff users would have to keep a track of every commit and copy paste git diffs to manually update nvchad.
 
## :gift_heart: Support

If you like NvChad and would like to support & appreciate it via donation then I'll gladly accept it. 

[![kofi](https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/siduck)
[![paypal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/siduck13)
[![buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/siduck)
[![patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/siduck)

## Credits

- [Elianiva](https://github.com/elianiva) helped me with NeoVim Lua related issues many times, helped me in my initial neovim journey!
- @lorvethe for making the beautiful NvChad logo.
