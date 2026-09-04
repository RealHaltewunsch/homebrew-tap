cask "m-series-video-converter" do
  version "0.1.1"
  sha256 "90a8612fcad7aa21ff6bd1e0702d95c012cc55c6d7f0646a3e04248fbd2e61df"

  url "https://github.com/RealHaltewunsch/mseries-video-converter/releases/download/v#{version}/M-Series-Video-Converter.zip"
  name "M-Series Video Converter"
  desc "Convert iPhone videos to HEVC 1080p on Apple Silicon"
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
