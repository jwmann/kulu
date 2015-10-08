#!/usr/bin/env bash
xcodebuild -archivePath kulu -scheme kulu archive

rm -rf Kulu.app
xcodebuild -exportArchive -exportFormat APP -archivePath kulu.xcarchive -exportPath Kulu
