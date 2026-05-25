class Toggl < Formula
  desc "Command-line client for Toggl Track"
  homepage "https://github.com/acpoppe/toggl-cli"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-aarch64-macos.tar.gz"
      sha256 "5983edcf4ed2ad4c0d6013b0d05e78eb22d288f3ad7ec0712d58566a3ce2e537"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-x86_64-macos.tar.gz"
      sha256 "b1b405ef84569c46b05ff0cce230edc2f2dff525fca18ec90f9aba70efecddea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-aarch64-linux.tar.gz"
      sha256 "bf2fe9878f828294960ecabda8385f072eefe0127d2ea2908a83049349708c61"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.0/toggl-x86_64-linux.tar.gz"
      sha256 "81174efc5fe6352efeac4c0afe28353b04e6b5aec27679191d879a50a9837ef6"
    end
  end

  def install
    bin.install "toggl"
  end

  test do
    assert_match "toggl", shell_output("#{bin}/toggl help")
  end
end
