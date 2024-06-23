#!/bin/bash

echo "#!/bin/bash" > do_rename.sh
echo >> do_rename.sh
ls -l *.c *.h | awk '{print "mv "$(NF)" bonus_"$(NF)}' >> do_rename.sh
chmod 755 ./do_rename.sh
./do_rename.sh
rm do_rename.sh
