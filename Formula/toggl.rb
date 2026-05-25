class Toggl < Formula
  desc "Command-line client for Toggl Track"
  homepage "https://github.com/acpoppe/toggl-cli"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-aarch64-macos.tar.gz"
      sha256 "cd4033e168bccb1ac55196f15cc36fbe14718502c7e74fa769d60430f13121ea"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-x86_64-macos.tar.gz"
      sha256 "500b548020240797eaec8bf4c1e8e785cfbcdc21f5799185228efa45d628671b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-aarch64-linux.tar.gz"
      sha256 "ca6336b2f38169baf26e9834ca428aa7ac7dfb63fe237656008741b2182441dc"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-x86_64-linux.tar.gz"
      sha256 "0d38c85d76cebf21ada5a2480aaebfae02fe8144353cfe5f998d99933f95f26e"
    end
  end

  def install
    bin.install "toggl"
  end

  test do
    assert_match "toggl", shell_output("#{bin}/toggl help")
  end
end
