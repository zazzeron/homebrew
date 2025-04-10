cask "freefilesync" do
  version "14.3"
  url "https://github.com/hkneptune/FreeFileSync/releases/download/v#{version}/FreeFileSync_#{version}_macOS.zip",
      verified: "github.com/hkneptune/FreeFileSync/"
  name "FreeFileSync"
  desc "Poderosa ferramenta de sincronização de arquivos"
  homepage "https://freefilesync.org/"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

  uninstall pkgutil: "org.freefilesync.FreeFileSync"
end
