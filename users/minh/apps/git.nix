{...}: {
  programs.git = {
    enable = true;

    userEmail = "minhnt141204@gmail.com";
    userName = "mizhm";

    signing = {
      key = "/home/minh/.ssh/id_ed25519";
      signByDefault = true;
    };

    extraConfig = {
      gpg = {format = "ssh";};

      url = {
        "ssh://git@github.com/" = {insteadOf = "https://github.com/";};
      };

      init = {defaultBranch = "main";};

      commit = {gpgsign = true;};

      tag = {gpgsign = true;};
    };
  };
}
