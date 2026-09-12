cask "audio-priority-bar" do
  version "2.0.0"
  sha256 "bd1d2896e314b3cbfac26d45885f77aca08b94564b58d4ada7cbf8412b1a1e15"

  url "https://github.com/camguillory/Audio-Priority-Bar/releases/download/v#{version}/AudioPriorityBar.zip"
  name "Audio Priority Bar"
  desc "Automatically switch audio devices by priority"
  homepage "https://github.com/camguillory/Audio-Priority-Bar"

  depends_on macos: :sonoma

  app "AudioPriorityBar.app"

  caveats <<~EOS
    Audio Priority Bar is ad-hoc signed, not notarized. If macOS blocks the
    first launch, open System Settings > Privacy & Security and click Open Anyway.
  EOS
end
