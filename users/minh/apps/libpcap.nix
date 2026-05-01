{pkgs, ...}: {
  home.file.".local/lib/libpcap.so.0.8".source = "${pkgs.libpcap.lib}/lib/libpcap.so.1";
}
