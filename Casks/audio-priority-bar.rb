cask "audio-priority-bar" do
  version "2.0.4"
  sha256 "ba691200dc28e8468503f90913bb28353a3e13b05ebf121ff592f895dda0dfb1"

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