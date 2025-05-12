from smolagents import CodeAgent, LiteLLMModel
from smolagents import DuckDuckGoSearchTool

model=LiteLLMModel(
    model_id="ollama/qwen2.5-coder:3b-instruct",
    api_base="http://127.0.0.1:11434",
    api_key = "unused",
    max_tokens=10
)

agent=CodeAgent(
    tools=[DuckDuckGoSearchTool()],
    model=model
)

agent.run("What's the capital of Hungary?")
