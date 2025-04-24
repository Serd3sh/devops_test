echo "Current directory: $(pwd)"
cd ..
dpkg-deb --build devops_test reverse.deb
mv reverse.deb devops_test/