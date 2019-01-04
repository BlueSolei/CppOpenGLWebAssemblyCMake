rm -rf build
mkdir build
pushd build
conan install ..
cmake ..
cmake --build .
popd
pwd
echo pushd build > run
echo ./glfw_app >> run
echo popd >> run
chmod 755 run

