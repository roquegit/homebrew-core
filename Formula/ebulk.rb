class Ebulk < Formula
  desc "Ingestion/download of large dataset into Wendelin-IA-Telecom platform"
  homepage "https://lab.nexedi.com/rporchetto/ebulk"
  url "https://lab.nexedi.com/rporchetto/ebulk/repository/archive.tar.gz?ref=v1.1.0"
  sha256 "23b5ef87dcb4dbc4a4dbd783328e3051b0cd9db5f6c8c78c13b70e3089766919"

  bottle :unneeded

  def install
	libexec.install "ebulk"
	libexec.install "ebulk-data"
	bin.write_exec_script (libexec/"ebulk")
  end

end
