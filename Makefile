# Имя Docker образа
IMAGE_NAME=alpine-executables

# Локальная директория для вывода результата
OUTPUT_DIR=$(PWD)/vendor

# Dockerfile
DOCKERFILE=Dockerfile

# Цель для сборки Docker образа
install:
	docker build -t $(IMAGE_NAME) -f $(DOCKERFILE) .

# Цель для выполнения контейнера
go:
	docker run --rm -v $(OUTPUT_DIR):/app/vendor $(IMAGE_NAME)

# Очистка локального каталога вывода
clean:
	rm -rf $(OUTPUT_DIR)/executable_files_list.txt
