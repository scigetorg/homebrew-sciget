cask "scigetapp" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm: "071751b4be95513f9f19e187a6599a6ca0affc0a2588198a83ce2dba9771e472", intel: "f9a8c5a97ca38aea9315c4628d149c1000b342a0c6a43f56362037fcd8ed0b2a"

  url "https://github.com/scigetorg/neurodesk-app/releases/download/v#{version}/ScigetApp-Setup-macOS-#{arch}.dmg"
  name "Sciget App"
  desc "Desktop application for scientific computing"
  homepage "https://sciget.org/"

  depends_on macos: :monterey

  app "ScigetApp.app"

  zap trash: [
    "~/Library/Application Support/neurodeskapp",
    "~/Library/Preferences/org.neurodesk.neurodeskapp.plist",
    "~/Library/Saved Application State/org.neurodesk.neurodeskapp.savedState",
  ]
end
