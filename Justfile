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
    --memory=12g \
    --memory-swap=16g \
    ollama/ollama \

# Runs smollm Model in Existent Ollama Container
run-model:
  @echo "Running https://ollama.com/library/smollm:135m"
  docker exec -it ollama ollama run smollm:135m

# Stop containers and deactivates venv
cleanup:
  docker stop ollama
  deactivate
