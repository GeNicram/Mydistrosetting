
gr() {
  case "$#" in
    '1')
      grep -Inr "$1" ./
      ;;
    '2')
      grep -Inr --include="*.$2" "$1" ./
  esac
}

cdup() {
  up_string="../"
  counter=$1
  if [[ $counter =~ '^[0-9]+$' ]]; then
    while [ $counter -gt 1 ]; do
      up_string+="../"
      ((counter--))
    done
  fi
  cd $up_string
}
alias cd..=cdup
