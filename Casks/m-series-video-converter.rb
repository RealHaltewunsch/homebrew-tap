cask "m-series-video-converter" do
  version "0.3.2"
  sha256 "103ea303c57c6ca896b95d10d4d60bea900d8c62d16659f810f409aac650b4a7"

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
