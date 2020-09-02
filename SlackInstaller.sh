#!/bin/bash
# Version 0.1 by Murat Doganer, Land Technologies 2020
# This script installs Slack for deployment via Fleetsmith

# Lets make our directory
mkdir Slack
cd Slack

# Lets download the most current slack dmg - must be manually changed when a new version is released
curl https://downloads.slack-edge.com/releases/macos/4.8.0/prod/x64/Slack-4.8.0-macOS.dmg --output slack.dmg

# Lets mount that dmg now
hdiutil attach slack.dmg

# And copy the Slack App into the Applications Folder
cp -R '/Volumes/Slack.app/Slack.app' '/Applications'

# Clean up
hdiutil detach /Volumes/Slack.app
rm slack.dmg
cd /Users/murat/Projects/Scripts 
rm -r Slack
exit 0 # on Success
