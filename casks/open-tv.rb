cask "open-tv" do
  version "1.5.2"

  url "https://github.com/Fredolx/open-tv/releases/download/v#{version}/Open.TV_#{version}_universal.dmg"
  name "Open-TV"
  desc "Open Source IPTV App"
  homepage "https://github.com/Fredolx/open-tv/releases"

  auto_updates true

  app "Open TV.app"

  zap trash: [
    "/Applications/Open TV.app",
    "#{ENV['HOME']}/Library/WebKit/dev.fredol.open-tv",
    "#{ENV['HOME']}/Library/Application Support/dev.fredol.open-tv",
    "#{ENV['HOME']}/Library/Caches/dev.fredol.open-tv",
    "/var/folders/_7/j4m7y9p14txf0rd2z1vy6g3r0000gn/T/dev.fredol.open-tv",
    "/var/folders/_7/j4m7y9p14txf0rd2z1vy6g3r0000gn/C/dev.fredol.open-tv"
  ]
end
