import ollama

response = ollama.chat(
    model='qwen2.5-coder:0.5b-instruct',
    messages=[{'role': 'user', 'content': "What's the capital of Hungary?"}]
)
print(response['message']['content'])
