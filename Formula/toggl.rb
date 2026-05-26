class Toggl < Formula
  desc "Command-line client for Toggl Track"
  homepage "https://github.com/acpoppe/toggl-cli"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.1/toggl-aarch64-macos.tar.gz"
      sha256 "c40dae584d297aa759412c36701590c48bd56c2c657015eefa46e3391114001d"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.1/toggl-x86_64-macos.tar.gz"
      sha256 "36073671b8862128a67fdda2c31930a1a348e42b0c52aef0800b482bc8299573"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.1/toggl-aarch64-linux.tar.gz"
      sha256 "0f08e0cf88cb1508482785376b5b2cff823f653cb2359c62de59c7e3b0ad1459"
    end
    on_intel do
      url "https://github.com/acpoppe/toggl-cli/releases/download/v1.1.1/toggl-x86_64-linux.tar.gz"
      sha256 "e18b5ec9857a933ef44772f375c73b6f8bba100dad81295c3570ba1414e29df5"
    end
  end

  def install
    bin.install "toggl"
  end

  test do
    assert_match "toggl", shell_output("#{bin}/toggl help")
  end
end
