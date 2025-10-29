{...}: {
  programs.git = {
    enable = true;

    settings = {
      user = {
        email = "minhnt141204@gmail.com";
        name = "mizhm";
      };

      gpg = {format = "ssh";};

      url = {
        "ssh://git@github.com/" = {insteadOf = "https://github.com/";};
      };

      init = {defaultBranch = "main";};

      commit = {gpgsign = true;};

      tag = {gpgsign = true;};
    };

    signing = {
      key = "/home/minh/.ssh/id_ed25519";
      signByDefault = true;
    };
  };
}
