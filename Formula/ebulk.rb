class Ebulk < Formula
  desc "Ingestion/download of large dataset into Wendelin-IA-Telecom platform"
  homepage "https://softinst104003.host.vifib.net/erp5/web_site_module/fif_data_runner/#/"
  url "https://lab.nexedi.com/rporchetto/embulk-wendelin/raw/master/tool_releases/SOURCE/ebulk_v3.0.zip"
  sha256 "90a4bd96233366dba68e133a0b5ad4649fb7de0cdd0f99357ccbf151d8ce0ad0"

  bottle :unneeded

  depends_on :java => "1.8"

  def install
    # Execute through /bin/bash to be compatible with OS X 10.9.
    libexec.install "ebulk_v3.0.zip"
    (bin/"roque-ebulk").write <<~EOS
      #!/bin/bash
      export JAVA_HOME=$(#{Language::Java.java_home_cmd("1.8")})
      exec /bin/bash "#{libexec}/ebulk_v3.0.zip" "$@"
    EOS
  end

#  test do
#    system bin/"embulk", "example", "./try1"
#    system bin/"embulk", "guess", "./try1/seed.yml", "-o", "config.yml"
#    system bin/"embulk", "preview", "config.yml"
#    system bin/"embulk", "run", "config.yml"
#  end
end
