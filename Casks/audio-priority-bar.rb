cask "audio-priority-bar" do
  version "2.0.2"
  sha256 "c72e943a8e87034872a6515ae588837f3d62d4466bd9c16a5d4e8eee6263e647"

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