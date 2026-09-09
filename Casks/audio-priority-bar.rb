cask "audio-priority-bar" do
  version "2.0.1"
  sha256 "63815273b230ea6750692f6fa055569529df804f6582dd355eb72e312c8da055"

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
