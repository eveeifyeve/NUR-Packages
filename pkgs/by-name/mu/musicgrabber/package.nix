{
  lib,
  python3Packages,
  fetchFromGitLab,
}:
python3Packages.buildPythonPackage (finalAttrs: {
  pname = "musicgrabber";
  version = "3.0.3";
  __structuredAttrs = true;
  strictDeps = true;

  src = fetchFromGitLab {
    owner = "g33kphr33k";
    repo = "musicgrabber";
    tag = "v${finalAttrs.version}";
    hash = "sha256-yybOvzlAZcrjeVy0izlea6CrdbimCnnlZ9InUqKN6HA=";
  };

  meta = {
    description = "Lidarr keeps that Album set full, but what about all those singles you want? Well, this will help you grab them and stuff them into Navidrome";
    homepage = "https://gitlab.com/g33kphr33k/musicgrabber";
    changelog = "https://gitlab.com/g33kphr33k/musicgrabber/-/blob/${finalAttrs.src.rev}/CHANGELOG.md";
    license = lib.licenses.unlicense;
    maintainers = with lib.maintainers; [ eveeifyeve ];
    mainProgram = "musicgrabber";
    platforms = lib.platforms.all;
  };
})
