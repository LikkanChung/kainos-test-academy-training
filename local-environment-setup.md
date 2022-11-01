# Local Development Environment Setup Tips

The following guide provides some tips on how you may want to set up your development environment. 
Ofcourse, they are suggestions and you can set it up to personal preference, but this document procides some general suggestions. 

This guide covers setup using a MacBook with MacOS:
* Homebrew
* JDK (jenv, JDK, Maven)
* Visual Studio Code, IntelliJ IDEA, Git

> N.B.: The commands used in this guide use the MacOS Terminal.

> N.B.B.: Kainos policy prevents sudo/admin permission, so you will need to install/run most commands in the user space.


## [Homebrew](https://brew.sh/)
Homebrew is a package manager for MacOS and is used to install software. 

1. Make sure your terminal is in the home directory: `cd ~`
2. Create a directory to install Homebrew into and install:
```
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```
3. Add Homebrew to your path. Edit your user profile(`~/.profile` or `~/.zshrc`) to include:
```
export PATH=$HOME/homebrew/bin:$PATH
```
4. Source the changed profile:
```
source ~/.zshrc
```
5. `which brew` should give somehting like `/Users/username/homebrew/bin/brew`

## Java
### Install jenv
```
brew install jenv
```

### Install JDK
```
brew install java
```

### Verify Install
```
java --version
javac --version
```

## Other Software
### Visual Studio Code
```
brew install --cask visual-studio-code
```

Usage: `code -v` to get the version, or `code` to launch.

### IntelliJ Idea Community Edition
```
brew install --cask intellij-idea-ce
```

### Git
```
brew install git
```
Verify: installation: `git --version`