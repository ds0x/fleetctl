class Fleetctl < Formula
  desc "CLI tool for Fleet device management (https://fleetdm.com)"
  homepage "https://fleetdm.com"
  version "4.81.2"
  license "MIT"

  on_macos do
    url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_macos.tar.gz"
    sha256 "a8ccd31eb28c7abb7427d2dbf7dc580e12717c4a23dea9bdc69353ccad4cbc4b"
  end

  on_linux do
    on_intel do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_amd64.tar.gz"
      sha256 "8b23b40e0e05ab9bd40f662d539409d5cb2a08fdf22dca335e3fadb2808487c6"
    end

    on_arm do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_arm64.tar.gz"
      sha256 "78720604057ff3da7ddc4afeb7c5d3cb82405b52d3df004db8327e0a38034476"
    end
  end

  def install
    bin.install "fleetctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleetctl --version")
  end
end
