FROM leanprovercommunity/lean
COPY lean-toolchain /home/lean/
RUN lake --version
COPY Comparse.lean DY.lean Examples.lean lakefile.toml lake-manifest.json Main.lean README.md /home/lean/
COPY Comparse /home/lean/Comparse
COPY DY /home/lean/DY
COPY Examples /home/lean/Examples
