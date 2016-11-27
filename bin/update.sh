#! /bin/bash

duti -s com.vallettaventures.Texpad tex all
duti -s com.github.atom md all
duti -s com.github.atom markdown all

tlmgr update --self
tlmgr update --all

echo "Updating R packages"
/Library/Frameworks/R.framework/Versions/Current/Resources/R -q -e "update.packages(repos='http://cran.rstudio.com/', ask=FALSE)"

echo "Updating Fiji packages"
/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx --update update

(set -x; brew update;)
(set -x; brew cask update;)

(set -x; brew upgrade;)

(set -x; brew cleanup;)
(set -x; brew cask cleanup;)

softwareupdate -l

rm -rf ~/.Trash/*
