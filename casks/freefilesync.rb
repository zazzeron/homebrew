cask "freefilesync" do
  version "14.2"
  url "https://github.com/hkneptune/FreeFileSync/releases/download/v#{version}/FreeFileSync_#{version}_macOS.zip",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Open Source File Sync"
  homepage "https://github.com/hkneptune/FreeFileSync/releases"

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
