cask "freefilesync" do
  version "14.3"
  url "https://github.com/hkneptune/FreeFileSync/releases/download/v#{version}/FreeFileSync_#{version}_macOS.zip",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Open Source File Sync"
  homepage "https://github.com/hkneptune/FreeFileSync/releases"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

  uninstall pkgutil: "org.freefilesync.FreeFileSync"
end
