echo "if no file generated please call npm install -g protoc-gen-js protoc-gen-grpc-web "
protoc -I=proto_place_here proto_place_here/greeter.proto --js_out=import_style=commonjs:./generated_ts_protobuf --grpc-web_out=import_style=typescript,mode=grpcwebtext:./generated_ts_protobuf





#protoc -I=proto_place_here proto_place_here/greeter.proto --js_out=import_style=commonjs:.\generated_ts_protobuf --grpc-web_out=import_style=typescript,mode=grpcwebtext:.\generated_ts_protobuf --plugin=protoc-gen-grpc-web=.\node_modules\protoc-gen-grpc-web\bin\protoc-gen-grpc-web.exe


#npm install -g grpc-web 
#npm install google-protobuf @improbable-eng/grpc-web
#npm install --save-dev protoc-gen-grpc-web