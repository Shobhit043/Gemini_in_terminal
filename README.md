# Gemini API Bash Script

This is a simple Bash script that sends a text prompt to the [Gemini API (v1beta)](https://ai.google.dev/gemini-api/docs/get-started) and returns the response using `curl` and `jq`.

## Prerequisites

Before using the script, make sure you have:

- **Bash** installed (typically pre-installed on most Linux systems)
- **`jq`** installed (for parsing JSON output)
- A **Gemini API key** from Google

## Setup

1. **Replace** `YOUR_API_KEY` in the script with your actual Gemini API key:

```bash
api_key="YOUR_ACTUAL_API_KEY"
```
(You can create your gemini API key in the Google Studio)

2. Make the script executable:

```bash
chmod +x gemini.sh
```

3. **Add** these 2 commands to ~/.bashrc file

```bash
export PATH=$PATH:path/to/folder/
alias 'gem'='bash path/to/folder/chatbot.sh'
```

4. **Execute** this command in the terminal

```bash
source ~/.bashrc
```

## Example

1. **Run** this command

```bash
gem "hello gemini."
```
## Ouptut

```bash
Hello! How can I help you today?
```

## Dependencies

- `curl` - for making the HTTP request
- `jq` - for parsing JSON (install with `sudo apt install jq` or equivalent)

## Notes

- Make sure your API key has access to the `gemini-2.0-flash` model.
- The script uses the `generateContent` endpoint.
- For multiline input, wrap your input in quotes or use a here-doc format.

## License

MIT License
