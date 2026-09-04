cask "m-series-video-converter" do
  version "0.3.3"
  sha256 "0e257f02559bb889a6451f38ac15a2640f10c8b9bb0c1e5fcc5127ab1d03599f"

  url "https://github.com/RealHaltewunsch/mseries-video-converter/releases/download/v#{version}/M-Series-Video-Converter.zip"
  name "M-Series Video Converter"
  desc "Convert iPhone videos to HEVC on Apple Silicon"
  homepage "https://github.com/RealHaltewunsch/mseries-video-converter"

  depends_on arch: :arm64
  depends_on macos: :ventura
  depends_on formula: "ffmpeg"
  depends_on formula: "exiftool"
  depends_on formula: "jq"

  app "M-Series Video Converter.app"

  zap trash: [
    "~/Library/Preferences/de.julius.mseries-video-converter.plist",
    "~/Library/Saved Application State/de.julius.mseries-video-converter.savedState",
  ]
end
