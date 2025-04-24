echo "Current directory: $(pwd)"
cd ..
dpkg-deb --build devops_test
mv reverse.deb devops_test/