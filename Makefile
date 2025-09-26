generate:
	make generate-user-api

generate-user-api:
	mkdir -p pkg/chat_v1
	protoc --proto_path proto \
	--go_out=pkg/chat_v1 --go_opt=paths=source_relative \
	--go-grpc_out=pkg/chat_v1 --go-grpc_opt=paths=source_relative \
	proto/chat.proto