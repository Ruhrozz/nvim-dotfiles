# NeoVim Installation

```bash
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -P /tmp/neovim_latest_release

mkdir -p $HOME/bin

tar -xzvf /tmp/neovim_latest_release/nvim-linux64.tar.gz -C $HOME/bin --transform 's/nvim-linux64/nvim/'

grep -qxF "export PATH=\"$HOME/bin/nvim/bin/:\$PATH\"" ~/.bashrc || echo "export PATH=\"$HOME/bin/nvim/bin/:\$PATH\"" >> ~/.bashrc
```

# Node.js Version Manager Installation

```bash
git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm
. $HOME/.nvm/nvm.sh

grep -qxF "export NVM_DIR=\"$HOME/.nvm\"" ~/.bashrc || echo $"export NVM_DIR=\"$HOME/.nvm\"" >> ~/.bashrc
grep -qxF "[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\"" ~/.bashrc || echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\"" >> ~/.bashrc
grep -qxF "[ -s \"\$NVM_DIR/bash_completion\" ] && \. \"\$NVM_DIR/bash_completion\"" ~/.bashrc || echo "[ -s \"\$NVM_DIR/bash_completion\" ] && \. \"\$NVM_DIR/bash_completion\"" >> ~/.bashrc
```
