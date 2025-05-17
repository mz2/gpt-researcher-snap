# Snap packaging for `gpt-researcher`

This project provides Snap packaging for the [gpt-researcher](https://github.com/assafelovic/gpt-researcher) Python CLI application.

## How to build the Snap

1. Ensure you have `snapcraft` installed:
   ```fish
   sudo snap install snapcraft --classic
   ```
2. Build the snap:
   ```fish
   snapcraft
   ```
3. Install the snap locally:
   ```fish
   sudo snap install gpt-researcher_*.snap --dangerous
   ```
4. Run the application:
   ```fish
   gpt-researcher --help
   ```

## Configuration

You can configure the snap using the following keys. These are set via:

```fish
sudo snap set gpt-researcher <key>=<value>
```

| Key                    | Environment Variable         | Default Value                   | Description                                 |
|------------------------|-----------------------------|----------------------------------|---------------------------------------------|
| openai-api-key         | OPENAI_API_KEY              | (none)                           | OpenAI API key                              |
| openai-api-base        | OPENAI_API_BASE             | http://127.0.0.1:11434/v1        | OpenAI API base URL                        |
| ollama-base-url        | OLLAMA_BASE_URL             | http://127.0.0.1:11434/          | Ollama base URL                            |
| fast-llm               | FAST_LLM                    | ollama:qwen3:14b                 | Fast LLM model                             |
| smart-llm              | SMART_LLM                   | ollama:deepseek-r1:70b            | Smart LLM model                            |
| strategic-llm          | STRATEGIC_LLM               | ollama:cogito:70b                 | Strategic LLM model                        |
| embedding-provider     | EMBEDDING_PROVIDER          | ollama                            | Embedding provider                         |
| ollama-embedding-model | OLLAMA_EMBEDDING_MODEL      | nomic-embed-text                  | Ollama embedding model                     |

After changing configuration, restart the service if needed:

```fish
sudo snap restart gpt-researcher.listener
```

For more details, see the [gpt-researcher documentation](https://github.com/assafelovic/gpt-researcher).

