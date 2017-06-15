pak="avalidronepet.pak"
packer="asset_packer"

if [[ $1 == "avalidronepet-ppets" ]]; then
    pak="avalidronepet-ppets.pak"
fi

mkdir "packed"
command=$packer" ./"$1" ./packed/"$pak
eval ${command}