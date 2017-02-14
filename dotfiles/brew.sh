#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install binutils
brew install binwalk
brew install dns2tcp
brew install exiftool
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hashcat
brew install hydra
brew install john
brew install knock
brew install lynis
brew install minisign
brew install netpbm
brew install netcat
brew install nmap
brew install nikto
brew install pngcheck
brew install p0f
brew install rkhunter
brew install snort
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
brew install gnupg2
brew install dwm
brew install jasper
brew install ncrack
brew install p0f
brew install pcre
brew install sshguard

# Install other useful binaries.
brew install ack
brew install dark-mode

brew install git
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png

# install homebrew cask
brew tap caskroom/cask
brew cask install appcleaner
brew cask install flux
brew cask install iterm2
brew cask install hyper
brew cask install google-chrome
brew cask install hex-fiend
brew cask install keepassx
brew cask install knockknock
brew cask install ricochet
brew cask install sublime-text
brew cask install transmission
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
