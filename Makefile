.PHONY: all clean

# Nombre del proyecto
PROJECT = $(project)

# Rutas de directorios
SRC_DIR = $(PROJECT)/src/main/java
TEST_DIR = $(PROJECT)/src/test/java
BUILD_DIR = $(PROJECT)/build

all: $(PROJECT)

$(PROJECT):
	@echo "Creando estructura de directorios para $(PROJECT)..."
	mkdir -p $(SRC_DIR)
	mkdir -p $(TEST_DIR)
	mkdir -p $(BUILD_DIR)
	touch $(PROJECT)/README.md
	touch $(SRC_DIR)/Main.java
	@echo "# $(PROJECT)" > $(PROJECT)/README.md
	@echo "public class Main {" > $(SRC_DIR)/Main.java
	@echo "    public static void main(String[] args) {" >> $(SRC_DIR)/Main.java
	@echo "        System.out.println(\"Hello, $(PROJECT)!\");" >> $(SRC_DIR)/Main.java
	@echo "    }" >> $(SRC_DIR)/Main.java
	@echo "}" >> $(SRC_DIR)/Main.java
	@echo "Estructura de directorios y archivos para $(PROJECT) creada."

clean:
	rm -rf $(PROJECT)
	@echo "Directorio $(PROJECT) eliminado."