{
  stdenv,
  fetchFromCodeberg,
  cmake,
  gpp,
  boost,
}:
{
  stdenv.mkDerivation = (
    finalAttrs: {
      pname = "audiowaveform";
      version = "1.11.1";

      src = fetchFromCodeberg {
        owner = "chrisn";
        repo = "audiowaveform";
        hash = "";
      };

      nativeBuildInputs = [

      ];
      buildInputs = [

      ];
    }
  );
}
