#!/bin/sh


ERROR_EXIT (){
  echo $1 1>&2
  exit 1
}

# TEST1-1: output check
echo "ans = 4" > /tmp/$$-ans
./kadai2.sh 4 12 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"

# TEST1-2
echo "ans = 21" > /tmp/$$-ans
./kadai2.sh 42 21 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"

echo OK
