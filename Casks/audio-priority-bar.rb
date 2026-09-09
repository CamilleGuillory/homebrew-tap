cask "audio-priority-bar" do
  version "2.0.0"
  sha256 "ef8675efa593e38fcfaa82b446174775963032548edfc6a5a0581328008e459b"

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
