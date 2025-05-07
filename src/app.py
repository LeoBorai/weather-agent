from smolagents import CodeAgent, LiteLLMModel
from smolagents import DuckDuckGoSearchTool

model=LiteLLMModel(model_id="ollama/smollm:135m")

agent=CodeAgent(
    tools=[DuckDuckGoSearchTool()],
    model=model
)

agent.run("How old is Bruce Wayne?")
