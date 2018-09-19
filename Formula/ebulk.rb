class Ebulk < Formula
  desc "Ingestion/download of large dataset into Wendelin-IA-Telecom platform"
  homepage "https://lab.nexedi.com/rporchetto/ebulk"
  url "https://lab.nexedi.com/rporchetto/ebulk/repository/archive.tar.gz?ref=v1.0.4"
  sha256 "61467f085134008a0e7259833198a9efee84633ea3b35f56fb433bbe986b0939"

  bottle :unneeded

  def install
	libexec.install "ebulk"
	libexec.install "ebulk-data"
	bin.write_exec_script (libexec/"ebulk")
  end

end
