class Wakalyze < Formula
  desc "CLI to list Wakapi working hours per day using the heartbeats API"
  homepage "https://github.com/masaishi/wakalyze"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-aarch64-apple-darwin.tar.gz"
      sha256 "c0a2388695f676a3bb636beb7685b0be43cfa445a0a06c1d2d404faf8c63bf4e"
    end
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-apple-darwin.tar.gz"
      sha256 "147acdb9db2b2e5edb345815e7ef48fedb106b9465f1b619881a90ca98a377c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/masaishi/wakalyze/releases/download/v#{version}/wakalyze-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b133ac434e10ea1ba7eeaf9e8dd6f8a4311b92cf07382a6f8b8620914735ae02"
    end
  end

  def install
    bin.install "wakalyze"
  end

  test do
    assert_match "wakalyze", shell_output("#{bin}/wakalyze --help")
  end
end
