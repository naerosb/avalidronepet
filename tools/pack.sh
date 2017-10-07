modname=""

if [[ $1 == "" ]]; then
  echo "Specify vanilla or ppets"
fi

if [[ $1 == "vanilla" ]]; then
  modname="avalidronepet"
fi

if [[ $1 == "ppets" ]]; then
  modname="avalidronepet-ppets"
fi

pak=$modname".pak"
dir=$modname

packer="asset_packer"
starboundmoddir=/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Starbound/mods

mkdir "packed"
command=$packer" ./"$dir" ./packed/"$pak
eval ${command}

if [[ $2 == "install" ]]; then
  cp ./packed/$pak "$starboundmoddir/"$pak
fi
