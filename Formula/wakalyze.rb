class Wakalyze < Formula
  desc "CLI to list Wakapi working hours per day using the heartbeats API"
  homepage "https://github.com/masaishi/wakalyze"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-aarch64-apple-darwin.tar.gz"
      sha256 "5a02d592b21be2e65b27a3d6d7f08ee50cd296444740a8a10543bd3abebc0101"
    end
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-apple-darwin.tar.gz"
      sha256 "b36f3811b43dc6070aa9a4b34e978f8c7061bbe80e1a2a5a024a70323321acae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5599add9304d430d70469807f35131b1f348b5072bbd2117601c3b4c6f94474b"
    end
  end

  def install
    bin.install "wakalyze"
  end

  test do
    assert_match "wakalyze", shell_output("#{bin}/wakalyze --help")
  end
end
