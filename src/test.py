import ollama

response = ollama.chat(
    model='qwen2.5-coder:3b-instruct',
    messages=[{'role': 'user', 'content': "What's the capital of Hungary?"}]
)
print(response['message']['content'])
