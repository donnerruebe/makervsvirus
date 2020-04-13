for MATERIAL in 'PETG' 'PLA' 
do
echo "creting for MATERIAL"
echo ${MATERIAL}
echo ""
STR="openscad -o dist/${MATERIAL}/bottom.stl -D 'marking=\"${MATERIAL}\"' bottomMarking.scad"
echo Creating Bottom Reinforcement as ${MATERIAL} 
echo cmd: ${STR}
eval $STR

STR="openscad -o dist/${MATERIAL}/headband.stl -D 'marking=\"${MATERIAL}\"' headbandMarking.scad"

echo Creating Headband as ${MATERIAL} 
echo cmd: ${STR}
eval $STR


done

for STACK in 2 4 6
do
for MATERIAL in 'PETG' 'PLA' 
do
STACKSTR="openscad -o dist/${MATERIAL}/headband_${STACK}x.stl -D 'file=\"dist/${MATERIAL}/headband.stl\"; anzahl=${STACK}' headbandStack.scad"
echo Stacking Headband ${STACK} times
echo cmd: ${STACKSTR}
eval $STACKSTR
done
done

