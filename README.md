# weather-agent
Simple Weather Agent created using Hugging Face's `smolagents` library

## Development

### Requirements

- Python `v3.3 >`
- Docker

This project uses Python's [`venv`][venv] to manage the Virtual Environment,
you can create the `.venv` directory as follows:

```bash
python3 -m venv .venv
```

> `venv` comes as part of Python's standard library since Python v3.3

> `.venv` should not be commited to the Git Repository

Then activate the Virtual Environment by executing:

```bash
source .venv/bin/activate
```

Confirm the virtual environment is activated by checking Python binary path:

```bash
which python
```

> While the virtual environment is active, the above command will output a filepath that includes the
> `.venv` directory, e.g. `.venv/bin/python`.

> If you want to switch projects or leave your virtual environment, deactivate the environment:
> ```bash
> deactivate
> ```

### Running Dockerized Ollama

This project uses Dockerized Ollama as LLM, the included `Justfile` provides a convenient recipe
to run the Ollama container.

```bash
just run-ollama
```

Then you can install the Model using:

```bash
just run-model
```

> This project is using a memory cheap model:
> https://ollama.com/library/smollm:1.7b

![venv](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/)
![ollama](https://ollama.com/blog/ollama-is-now-available-as-an-official-docker-image)
