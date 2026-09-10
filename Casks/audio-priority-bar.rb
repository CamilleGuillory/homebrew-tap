cask "audio-priority-bar" do
  version "2.0.0"
  sha256 "ce491ffdb0674cb5dc13eb2441b2750f5be62be8f03175bcd7ce0ee94e363329"

  url "https://github.com/camguillory/Audio-Priority-Bar/releases/download/v#{version}/AudioPriorityBar.zip"
  name "Audio Priority Bar"
  desc "Automatically switch to the highest-priority connected audio device"
  homepage "https://github.com/camguillory/Audio-Priority-Bar"

  depends_on macos: :ventura

  app "AudioPriorityBar.app"

  caveats <<~EOS
    Audio Priority Bar is not yet signed with an Apple Developer ID.
    If macOS blocks the first launch, open System Settings > Privacy & Security
    and click Open Anyway.
  EOS
end