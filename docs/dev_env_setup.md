# Dev env setup

## Terminal env (example for MacOS)

- [Iterm2][Iterm2]

- update zsh to the latest version

```bash
brew install zsh
```

- [Oh My Zsh][OhMyZsh]

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- [zsh-autosuggestions][ZshAutosuggestions]

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add to .zshrc
plugins=(zsh-autosuggestions)
```

## [Install Rust][InstallRust]

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## [Cursor][Cursor]

The AI Code Editor.

## Install VS Code plugins (Optional)

- [Dependi][Dependi]: Your Ultimate Dependency Management Tool.
- Even Better TOML: A TOML language support extension backed by [Taplo][Taplo].
- [Better Comments][BetterComments]: The Better Comments extension will help you create more human-friendly comments in
  your code.
- [Error Lens][ErrLens]: Improve highlighting of errors, warnings and other language diagnostics.
- [GitLens][GitLens]: Supercharge Git in VS Code.
- [markdownlint][MarkdownLint]: Markdown/CommonMark linting and style checking for Visual Studio Code.
- [indent-rainbow][IndentRainbow]: A simple extension to make indentation more readable.
- [Prettier][Prettier]: Prettier Formatter for Visual Studio Code.
- [REST client][RestClient]: REST Client allows you to send HTTP request and view the response in Visual Studio Code
  directly.
- [YAML][YAML]: YAML Language Support by Red Hat.
- [TODO Highlight][TODOHighlight]: Highlight TODO, FIXME and other annotations within your code.
- [vscode-icons][VscodeIcons]: Icons for Visual Studio Code.
- [rust-analyzer][RustAnalyzer]: This extension provides support for the Rust programming language. It is recommended
  over and replaces `rust-lang.rust`.

## Install [cargo generate][CargoGenerate]

cargo-generate is a developer tool to help you get up and running quickly with a new Rust project by leveraging a
pre-existing git repository as a template.

```bash
cargo install cargo-generate

# templates on github
cargo generate --git https://github.com/username-on-github/mytemplate.git

# or just
cargo generate username-on-github/mytemplate

# templates on other git platforms
cargo generate gl:username-on-gitlab/mytemplate # translates to https://gitlab.com/username-on-gitlab/mytemplate.git
cargo generate bb:username-on-bitbucket/mytemplate # translates to https://bitbucket.org/username-on-bitbucket/mytemplate.git
cargo generate sr:username-on-sourcehut/mytemplate # translates to https://git.sr.ht/~username-on-sourcehut/mytemplate (note the tilde)

# this scheme is also available for github
cargo generate gh:username-on-github/mytemplate # translates to https://github.com/username-on-github/mytemplate.git

# for a complete list of arguments and options
cargo help generate
```

## Best Practices for Python Env Management

We use [Miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/) for Python environment and version
management.

```shell
# download pkg (example for MacOS)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.pkg

# check hash (example for MacOS)
shasum -a 256 ./Miniconda3-latest-MacOSX-x86_64.pkg

# install the downloaded package

# create a new env and activate it (example for creating a new env named Py3_12 with python 3.12)
conda create -n Py3_12 python=3.12

# check the created env
conda env list

# activate the env
conda activate Py3_12

# check the python version
python --version
```

## Install [pre-commit][PreCommit]

```bash
# conda activate Py3_12
python -m pip install pre-commit

# install the git hook scripts into the local repo
pre-commit install

# run against all the files
pre-commit run --all-files
```

## Install [Cargo deny][CargoDeny]

Cargo plugin for linting your dependencies.

```bash
# quick start
cargo install --locked cargo-deny && cargo deny init && cargo deny check
```

## Install [typos][Typos]

Source code spell checker.

```bash
cargo install typos-cli
```

## Install [git cliff][GitCliff]

git-cliff can generate changelog files from the Git history by utilizing conventional commits as well as regex-powered
custom parsers.

```bash
cargo install git-cliff
```

## Install [cargo-nextest][CargoNextest]

Nextest is a next-generation test runner for Rust.

```bash
cargo install cargo-nextest --locked
```

[Cursor]: https://www.cursor.com/

[InstallRust]: https://www.rust-lang.org/tools/install

[Dependi]: https://www.dependi.io/

[Taplo]: https://taplo.tamasfe.dev/

[BetterComments]: https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments

[ErrLens]: https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens

[GitLens]: https://www.gitkraken.com/gitlens?utm_source=gitlens-extension&utm_medium=in-app-links&utm_campaign=gitlens-logo-links

[MarkdownLint]: https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint

[IndentRainbow]: https://github.com/oderwat/vscode-indent-rainbow

[Prettier]: https://prettier.io/

[RestClient]: https://marketplace.visualstudio.com/items?itemName=humao.rest-client

[YAML]: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml

[TODOHighlight]: https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight

[VscodeIcons]: https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons

[RustAnalyzer]: https://github.com/rust-lang/rust-analyzer

[CargoGenerate]: https://github.com/cargo-generate/cargo-generate

[PreCommit]: https://pre-commit.com/

[CargoDeny]: https://github.com/EmbarkStudios/cargo-deny

[Typos]: https://github.com/crate-ci/typos

[GitCliff]: https://git-cliff.org/

[CargoNextest]: https://github.com/nextest-rs/nextest

[Iterm2]: https://iterm2.com/

[OhMyZsh]: https://ohmyz.sh/#install

[ZshAutosuggestions]: https://github.com/zsh-users/zsh-autosuggestions
