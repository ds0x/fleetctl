class Fleetctl < Formula
  desc "CLI tool for Fleet device management (https://fleetdm.com)"
  homepage "https://fleetdm.com"
  version "4.81.0"
  license "MIT"

  on_macos do
    url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_macos.tar.gz"
    sha256 "5ee195aee4aeb267ac7f7fffd010bf02d7ddf6df1eac71b073a52062ee85485f"
  end

  on_linux do
    on_intel do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_amd64.tar.gz"
      sha256 "366a04a50706741fc3e0bb382239d9088918af637d45c493edfa271cc91a26e7"
    end

    on_arm do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_arm64.tar.gz"
      sha256 "b1e56569e931b09d336a9c01d8b70378a09707e53aa0799121f69aeb701c95fd"
    end
  end

  def install
    bin.install "fleetctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleetctl --version")
  end
end
