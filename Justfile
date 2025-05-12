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

run-ollama-ui:
  docker run -d \
    -p 3000:8080 \
    --add-host=host.docker.internal:host-gateway \
    -v open-webui:/app/backend/data \
    --name open-webui \
    --restart always ghcr.io/open-webui/open-webui:main

# Pulls Model in Existent Ollama Container
pull-model:
  @echo "Running https://ollama.com/library/qwen2.5-coder:0.5b-instruct"
  docker exec -it ollama ollama pull qwen2.5-coder:0.5b-instruct

# Runs Model in Existent Ollama Container
run-model:
  @echo "Running https://ollama.com/library/qwen2.5-coder:0.5b-instruct"
  docker exec -it ollama ollama run qwen2.5-coder:0.5b-instruct

# Stop containers and deactivates venv
cleanup:
  docker stop ollama
  deactivate
