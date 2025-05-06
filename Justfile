default:
  @echo "No default"
  just --list

# Install Python Packages
install:
  python -m pip install -r requirements.txt

# Runs Ollama in Docker
run-ollama:
  docker run -d -v ollama:/root/.ollama \
    -p 11434:11434 \
    --name ollama \
    ollama/ollama \

# Runs smollm Model in Existent Ollama Container
run-model:
  @echo "Running https://ollama.com/library/smollm:1.7b"
  docker exec -it ollama ollama run smollm:1.7b

# Stop containers and deactivates venv
cleanup:
  docker stop ollama
  deactivate
