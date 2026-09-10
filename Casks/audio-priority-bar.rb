cask "audio-priority-bar" do
  version "2.0.3"
  sha256 "163b1ab310f600069de9126601f1c1634d7787d6826a0bb2d884d605a9a0567b"

  url "https://github.com/CamilleGuillory/AudioPriorityBar/releases/download/v#{version}/AudioPriorityBar.zip"
  name "Audio Priority Bar"
  desc "Automatically switch to the highest-priority connected audio device"
  homepage "https://github.com/CamilleGuillory/AudioPriorityBar"

  depends_on macos: :ventura

  app "AudioPriorityBar.app"

  caveats <<~EOS
    Audio Priority Bar is not yet signed with an Apple Developer ID.
    If macOS blocks the first launch, open System Settings > Privacy & Security
    and click Open Anyway.
  EOS
end