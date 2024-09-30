1.add submodule for your repository
2.unzip  protobuf-cpp-3.19.4.zip
3.add exists project libprotobuf.vcxproj
4.in your project add additional include directory protobuf-3.19.4 src
5.link library




below is way to generate VS project

https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
https://developers.google.com/protocol-buffers/docs/proto3#generating


download c++ source code 
/***************************************************************/
					https://github.com/protocolbuffers/protobuf/releases
/***************************************************************/
ex:
protobuf-cpp-3.19.4.zip

extract and find out folder

protobuf-3.19.4\cmake


download CMake and open it's GUI
/***************************************************************/
					https://cmake.org/
/***************************************************************/
where is the source code
	C:/Users/Fatming/Desktop/protobuf-cpp-3.19.4/protobuf-3.19.4/cmake
where to build the binaries
ex:
	C:/Users/Fatming/Desktop/protobuf-cpp-3.19.4/protobuf-3.19.4/VSProtoBuf

click configure
click generate


/***************************************************************/
	now open protobuf.sln(C:/Users/Fatming/Desktop/protobuf-cpp-3.19.4/protobuf-3.19.4/VSProtoBuf)
	compile protoc peoject after compiled copy protoc.exe to
				ProtoBuffer\ProtoBufferTool\Prebuilt\bin
	copy your poto files to ProtoBuffer\ProtoBufferTool\Prebuilt\bin\proto
				double click  ProtoBuffer\ProtoBufferTool\Prebuilt\binto_cpp_proto.bat
	now you get your file under  
				ProtoBuffer\ProtoBufferTool\Prebuilt\cpp_proto
/***************************************************************/


use lite version
add below line to *.proto file
option optimize_for = LITE_RUNTIME;

generate file for project
for c++
protoc --proto_path=Your_proto_file_directory --cpp_out=out_put_directory  Your_proto_file_directory\*.proto
for javascript++
protoc --proto_path=Your_proto_file_directory --js_out=out_put_directory  Your_proto_file_directory\*.proto



make VSProject libprotobuf.vcxproj change file path with text editor.