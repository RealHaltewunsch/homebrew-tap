cask "m-series-video-converter" do
  version "0.2.3"
  sha256 "2e20660eb78bcb4494b35b3a33d85f4fc7f3f7d45238d6ccd044a8b996d2b82e"

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
