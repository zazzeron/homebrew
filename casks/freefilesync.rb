cask "freefilesync" do
  version "14.3"
  url "https://github.com/hkneptune/FreeFileSync/releases/download/v#{version}/FreeFileSync_#{version}_macOS.zip",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Open Source File Sync"
  homepage "https://github.com/hkneptune/FreeFileSync/releases"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

    zap trash: [
    "~/Applications/FreeFileSync.app"
    "/usr/local/bin/freefilesync"
    "~/Users/leosasseron/Library/Application Support/FreeFileSync"
    "~/var/folders/_7/j4m7y9p14txf0rd2z1vy6g3r0000gn/C/org.freefilesync.FreeFileSync"
]
end
