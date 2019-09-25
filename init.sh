#!/bin/bash

# macOS specific settings
mkdir -p ../Default
ln ../User/Preferences\ \(OSX\).sublime-settings ../Default/Preferences\ \(OSX\).sublime-settings

# Install Dependency packages
pip install pip -U
pip install CodeIntel
npm install -g npm jshint csslint xg-htmlhint
