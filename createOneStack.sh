#create Stack
MATERIAL=$1
STACK=$2

re='^[0-9]+$'
if ! [[ $STACK =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi
if [[ $STACK -lt 2 ]]; then
  echo "zu wenig um stapeln"
  exit 1
fi
if [ -r "dist/${MATERIAL}/headband.stl" ]; then
  # Take action if $DIR exists. #
  echo "Installing config files in ${DIR}..."
  STACKSTR="openscad -o dist/${MATERIAL}/headband_${STACK}x.stl -D 'file=\"dist/${MATERIAL}/headband.stl\"; anzahl=${STACK}' headbandStack.scad"
  echo Stacking Headband ${STACK} times
  echo cmd: ${STACKSTR}
  eval $STACKSTR
else
  echo "Materialordner nicht verfügbar!"
fi


