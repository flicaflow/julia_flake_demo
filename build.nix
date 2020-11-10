{ buildJulia15Package }:
buildJulia15Package rec { 
  name = "hello-${version}";
  version = "0.1.0";
  dependencyHash =  "sha256-SPSrDNcB0H9fY+T1xEG1NYIrJIV1SU3dr2hQ5aPJcV0=";
  entry = "main.jl";
  src = ./.;
  execName = "hello1";
}
