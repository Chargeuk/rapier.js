#! /bin/sh

# note: before running this file, node_modules must be removed from the root of the repository
# otherwise you get Error: spawnSync
npx wasm-pack build
sed -i.bak 's#chargeuk_rapier#@chargeuk/rapier#g' ./pkg/package.json
sed -i.bak 's/"rapier_wasm3d_bg.wasm"/"*"/g' ./pkg/package.json
rm pkg/*.bak
rm pkg/.gitignore