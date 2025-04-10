cask "freefilesync" do
  version "14.3"
  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Open Source File Sync"
  homepage "https://freefilesync.org"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

  zap trash: [
    "/Applications/FreeFileSync.app",
    "/Applications/RealTimeSync.app",                                                      
    "~/Library/Application Support/FreeFileSync",                
    "~/Library/Caches/org.freefilesync.FreeFileSync",            
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist"  
  ]
end
