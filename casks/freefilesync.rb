cask "freefilesync" do
  version "latest"
  sha256 :no_check

  url "https://github.com/hkneptune/FreeFileSync/releases/latest/download/FreeFileSync_macOS.dmg",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Poderosa ferramenta de sincronização de arquivos"
  homepage "https://freefilesync.org/"

  app "FreeFileSync.app"

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
  ]
end