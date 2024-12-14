rm -rf /opt/PHANTX/mbtget

cd /opt/PHANTX

git clone https://github.com/sourceperl/mbtget.git

cd /opt/PHANTX/mbtget


if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

perl Makefile.PL

make

make install

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/mbtget
rm -rf /opt/PHOS/tool/mbtget