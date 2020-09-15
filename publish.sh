
ver=$(node -pe "JSON.parse(process.argv[1]).version" "$(cat package.json)")
echo $ver
vsce package
hub release create -a "blocks-$ver.vsix" -m "$ver" "v$ver"
rm "blocks-$ver.vsix"