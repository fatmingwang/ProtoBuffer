protoc --cpp_out=./generated_grpc_protobuf --grpc_out=./generated_grpc_protobuf --plugin=protoc-gen-grpc=grpc_exe/grpc_cpp_plugin.exe ./proto_place_here/*.proto
