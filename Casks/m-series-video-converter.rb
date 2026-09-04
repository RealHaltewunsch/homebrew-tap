cask "m-series-video-converter" do
  version "0.3.4"
  sha256 "30f9bd3c6f44bb8701646db9db829fd3ff39d8e66a8ac364d5c9312f33c1eb0d"

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
