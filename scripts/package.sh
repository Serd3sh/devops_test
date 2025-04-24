echo "Current directory: $(pwd)"
cd ..
dpkg-deb --build reverse
mv reverse.deb reverse/