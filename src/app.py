from smolagents import CodeAgent, LiteLLMModel
from smolagents import tool
from smolagents import DuckDuckGoSearchTool
from smolagents.agents import ToolCallingAgent

model=LiteLLMModel(
    model_id="ollama/smollm:1.7b",
    api_key="ollama"
)

agent=CodeAgent(
    tools=[],model=model,
    add_base_tools=True,
    additional_authorized_imports=['numpy', 'sys','wikipedia','scipy','requests', 'bs4']
)

agent.run("Hello?",)
