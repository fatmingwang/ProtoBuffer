https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
https://developers.google.com/protocol-buffers/docs/proto3#generating


download c++ source code 
ex:
protobuf-cpp-3.19.4.zip

extract and find out folder

protobuf-3.19.4\cmake


download CMake and open it's GUI

where is the source code
C:/Users/Fatming/Desktop/protobuf-cpp-3.19.4/protobuf-3.19.4/cmake
where to build the binaries
ex:
C:/Users/Fatming/Desktop/protobuf-cpp-3.19.4/protobuf-3.19.4/VSProtoBuf

click configure
click generate




generate file for project
for c++
protoc --proto_path=Your_proto_file_directory --cpp_out=out_put_directory  Your_proto_file_directory\*.proto
for javascript++
protoc --proto_path=Your_proto_file_directory --js_out=out_put_directory  Your_proto_file_directory\*.proto



for grpc

git clone https://github.com/microsoft/vcpkg.git
cd vcpkg
bootstrap-vcpkg.bat
vcpkg install grpc:x64-windows protobuf:x64-windows
vcpkg integrate install
vcpkg install openssl:x64-windows

for grpc
protoc --cpp_out=. --grpc_out=. --plugin=protoc-gen-grpc=<path_to_vcpkg>\installed\x64-windows\tools\grpc\grpc_cpp_plugin.exe ReplaceYourProtoFileName.proto