pak="avalidronepet.pak"
packer="asset_packer"

if [[ $1 == "avalidronepet-ppets" ]]; then
    pak="avalidronepet-ppets.pak"
fi

starboundmoddir=/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Starbound/mods

mkdir "packed"
command=$packer" ./"$1" ./packed/"$pak
eval ${command}

if [[ $2 == "install" ]]; then
  cp ./packed/$pak "$starboundmoddir/"$pak
fi

