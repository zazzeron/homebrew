cask "freefilesync" do
  version "14.3"
  sha256 :no_check

  url "https://github.com/hkneptune/FreeFileSync/releases/download/v14.3/FreeFileSync_14.3_macOS.zip",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Poderosa ferramenta de sincronização de arquivos"
  homepage "https://freefilesync.org/"

  app "FreeFileSync.pkg"

  zap trash: [
    "~/Library/Application Support/FreeFileSync",
    "~/Library/Preferences/org.freefilesync.FreeFileSync.plist",
  ]
end