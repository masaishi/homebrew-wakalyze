class Wakalyze < Formula
  desc "CLI to list Wakapi working hours per day using the heartbeats API"
  homepage "https://github.com/masaishi/wakalyze"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-aarch64-apple-darwin.tar.gz"
      sha256 "2a5038d6c194678af0e96aa80bb70b3ed88a8b726e738217e4702f8bb181dcfb"
    end
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-apple-darwin.tar.gz"
      sha256 "bb9e6c76be1c9b1be5ef00fd42118ee83613c8b5bb6bc613213a7d82d9c33cd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ba348d8a59589172660b159e776fb92512cb8cd6e43c2ffb05a42a18e158b37"
    end
  end

  def install
    bin.install "wakalyze"
  end

  test do
    assert_match "wakalyze", shell_output("#{bin}/wakalyze --help")
  end
end
