# Mac Terminal Setup Guide

## Description
test
---

🚀 **Terminal Customization Journey**

Embark on a thrilling adventure to optimize your terminal experience! Is the idea of configuring your Mac terminal, setting up Zsh, Tmux, and exploring Neovim a bit overwhelming? Fear not!

This beginner-friendly repository is crafted to be your guide, leading you through the process of transforming your Mac terminal into a polished, efficient workspace. Whether you're new to terminal customization or a seasoned user looking to elevate your workflow, this guide has something for everyone.

No prior Neovim experience? No worries! This guide starts from square one, offering detailed explanations to ensure you grasp the essentials before diving into the customization journey.

What makes this guide exceptional? It's all about your control. You're not obligated to follow the entire setup if you don't want to. This guide is modular, enabling you to pick and choose specific sections based on your interests or needs. If customizing your Zsh is your top priority, feel free to skip everything else and focus on that. Alternatively, if Neovim or Tmux is where your curiosity lies, you can explore those sections independently. The flexibility is yours to command.

So, whether you're a beginner taking your initial steps into the world of terminal customization or an experienced user aiming to refine your setup, this guide empowers you to tailor your terminal environment to your preferences, step by step. Let's embark on this journey together and optimize not just Neovim but your entire terminal experience! 🌐💻✨

---

### 🚀 Getting Started

- [Requirements](#requirements)
- [Setup](#setup)
  - [setup.config](#setup)
  - [zsh setup](#zsh-setup)
  - [tmux setup](#tmux-setup)
  - [nvim setup](#nvim-setup)
- [Zsh Installation](#zsh)
- [Neovim Installation](#neovim)
- [Tmux Installation](#tmux)

---

### 📋 Requirements

- **[🤖 ChatGPT](https://chat.openai.com/):** If you haven't created an account yet, just take a sec
  to sign up. Trust me, it's totally worth it and can save you a bunch of time and headaches when you're
  setting up your terminal. This tool is a game-changer – not only when you're stuck but also as a handy
  sidekick for all sorts of tasks. Fun fact: I'm even using ChatGPT to write this README. It's my go-to,
  especially since it's my first time doing this. Enjoy the smooth efficiency and extra oomph it adds to
  your workflow.
- **[🍺 Homebrew](https://brew.sh/):** Please install this trust this will make your life so much easier with
  some of the installations.
- **[🖥️ Zsh shell](#zsh):** Before you dive into anything, make sure you've got Zsh installed.
  Now, chances are, if you've got one of those shiny new MacBooks, Zsh is probably already hanging out
  in your system. Not sure? No worries! Just [click here](#zsh) – it'll whisk you away to a section
  that spills the beans and hands you the secret code to check if Zsh is partying in your system or not.
  - **Zsh Plugins (Note you dont have to install these yet i will walk you through
    process in the setup section):**
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)
    - [powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
- **[🖥️ Iterm2](https://iterm2.com/):** use this for you terminal, it provides lots of great
  customization, compared to the preinstalled terminal that all mac come with
- **[Neovim](#neovim):** The suace of our setup, if you wanna know how to install it then
  simply click on the link.
- **[Tmux](#tmux):** Extra sauce, if you wanna know how to install it then simply click
  on the link.
  - **Tmux Plugins:** [tpm] (**Note I will walk you through the process of
    setting this up**)
    - (https://github.com/tmux-plugins/tpm)

---

### Setup

After completing all the requirements we can finally start setttng up the rest
of the terminal.

**1. Adjust Terminal Transparency:**

- Open iTerm and navigate to preferences (top left corner) >> profile >> window.
- Set terminal transparency to around 30.

**2. Copy Git Repository Link:**

- If you haven't already, copy the Git repository link (starts with https).

**3. Clone the Repository:**

- Open your terminal and navigate to your home directory.
- Clone the repository using the command:
  ```zsh
  git clone [paste repository link]
  ```
  - _Note: If it's your first time using Git, you might encounter a username and password prompt. Instead of your password, use a GitHub personal access token. Generate it in GitHub: Settings >> Developer Settings >> Personal Access Token >> Token (classic). Copy the generated token and use it as your password._

**4. Grant Permissions:**

- Navigate to the repository in your terminal.
- Execute the command:
  ```zsh
  chmod +x setup-config.sh
  ```

**5. Run Setup Script:**

- Run the setup script using:
  ```zsh
  ./setup-config.sh
  ```
  - _This script will create symlinks for all the necessary files._

**6. Check for New Files:**

- After running the script, check your home directory for two new files: `.zshrc` and `.tmux.conf`.

**7. Customize Zsh (Optional):**

- The `.zshrc` file contains basic aliases to enhance Zsh usage. Feel free to add more if needed.

**8. Explore Tmux Setup (Optional):**

- The `.tmux.conf` file holds a pre-configured Tmux setup. Further customization instructions will be provided later.

### Zsh Setup

**1. Create Zsh Folder:**

```zsh
mkdir -p ~/.config/zsh/ && cd ~/.config/zsh
```

**2. Power up your terminal with powerlevel10k**

- add the plugin to your zsh folder

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
```

- source your plugins by typing this code

```zsh
echo 'source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

- restart your temrinal and follow the zsh prompt **(note make sure that you say yes to font installation)**

- if needed, redo setup with **p10k configure**.

**3. Add syntax highlighting**

- go to your zsh folder and clone this repo

```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

- go to your .zshrc file and put this after the aliases

```zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

- restart your terminal

**4. Remember Aliases**

- in your zsh folder clone

```zsh
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git
```

- go to your .zshrc file and add this line

```zsh
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh
```

**5. Auto Completion**

- go to your zsh folder and clone

```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions
```

- go your .zshrc file and add this line

```zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

**6. Finally restart your terminal and it alll should work**

### Tmux Setup

**1. Clone Tmux Plugin Manager (TPM)**

```zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

**2. Install Tmux Plugins**

- enter tmux by typing `tmux`
- Install the plugins by pressing `ctrl+I`

**Additional Customization (Optional)**

- feel free to expolore my tmux config and change anything to what suits your needs best, for example i have a customized keyboard so i set the leader key to `ctrl+s`
- so feel free to switch it to another key binding

### Nvim Setup

**1. Check Nvim Health**

- Open Neovim by typing `nvim` in your terminal
- While in normal mode, type `:checkhealth`. This will display any issue you may need to fix

**2. Use ChatGPT for Help**

- Copy and paste any errors that you may have in chatgpt and ask it for help
- It will give you step by step instructions on how to fix those errors
- **hint make sure to use version managers whenever possible for example nodeVM, JavaVM or pythonVM**

**3. Resolve Issues**

- Fix the critical errors first
- **Note, you dont have to fix them all just all the important ones but if i were you i would try to fix as many as possible**

**4. Run Setup Script**

- Navigate to your dotfiles in your terminal
- Make the setup script exectuable

```zsh
chmod +x setup-nvim.sh
```

- Run the script

```zsh
./setup-nvim.sh
```

**5. Final Check**

- Return to neovim and type `:checkhealth`
- Fix any remaining errors using chatGPT
- Your finally done you should be able to use my nvim config without any issues

### Zsh

**Installation checker**: copy and paste the code in your terminal to check
whether you do have it or not

```bash
if [[ $SHELL == *zsh* ]]; then
echo "Zsh is your default shell."
else
echo "Zsh is not your default shell. Please set it as the default shell."
fi

if which zsh &> /dev/null; then
echo "Zsh is installed."
else
echo "Zsh is not installed. Please install Zsh."
fi

```

**Installation**

1. Copy and paste the code in your terminal to install zsh
   ```bash
   brew install zsh
   ```
2. Then copy this code to complete the installation, it will make your default
   shell zsh
   `bash
chsh -s /bin/zsh
`
3. Finally you can either close and reopen the terminal or if you want then
   simply paste this in your terminal to start using zsh
   `bash
zsh
`

---

### Neovim

All the steps to insall neovim are in the [neovim git](https://github.com/neovim/neovim/releases/tag/stable) page however I will
personally walk you through it.

1. Copy code and paste it in your terminal
   ```zsh
   brew install gettext
   ```
2. Go to the link that ive provided and download the **nvim-macos.tar.gz** file
3. Go to your downloads folder in terminal, you can do this by typing
   ```zsh
   cd Downloads
   ```
4. Then to avoid any unknown developer warnings type in this
   ```zsh
   xattr -c ./nvim-macos.tar.gz
   ```
5. Then extract the file contents of the file using this code
   ```zsh
   tar xzvf nvim-macos.tar.gz
   ```
6. once youve done all of this you should be able to run nvim, however lets take
   it a step further and make it executable in the entier terminal, we can do
   this by going to your local dir by using this code `cd /usr/local`
   then check if there is a bin folder you can do this with this code `ls -a`, if you
   dont see a folder called bin then you can simply make one
   you can copy and paste this code to make the folder `sudo mkdir bin`, this will require you to type in your laptops password but once you do you should be ready to move on to the next step

7. From here simpy type in **cd** and it should take you to your home dir and
   from there all you have to do is move the nvim exc to the bin directory you
   can do this by typing in this code `sudo mv Downloads/nvim-macos /usr/local/bin/`

8. From there in your home directory check if you have a .zshrc file if you dont
   you can make one by simply creating it, using vim
   ```zsh
   vim ~/.zshrc
   ```
   once inside the .zshrc file type in this cmd
   ```zsh
   #path for neovim
   export PATH="/usr/local/bin/nvim-macos/bin:$PATH"
   ```
   once your done type :wq and you should be good, just restart your terminal
   and it should be ready to go, type **nvim** and you should be able to use
   nvim

---

### Tmux

1. Tmux is the most easier to istall all you have do is type in
   ```zsh
   brew install tmux
   ```
