return {
  "kiddos/gemini.nvim",
  build = { "pip install -r requirements.txt", ":UpdateRemotePlugins" },
  config = function()
    require("gemini").setup({
      menu_key = "<C-o>",
      insert_result_key = "<S-Tab>",
      hints_delay = 3000,
      instruction_delay = 2000,
      menu_prompts = {
        {
          name = "Unit Test Generation",
          command_name = "GeminiUnitTest",
          menu = "Unit Test 🚀",
          prompt = "Write unit tests for the following code\n",
        },
        {
          name = "Code Review",
          command_name = "GeminiCodeReview",
          menu = "Code Review 📜",
          prompt = "Do a thorough code review for the following code.\nProvide detail explaination and sincere comments.\n",
        },
        {
          name = "Code Explain",
          command_name = "GeminiCodeExplain",
          menu = "Code Explain 👻",
          prompt = "Explain the following code\nprovide the answer in Markdown\n",
        },
      },
      hints_prompt = [[
Instruction: Use 1 or 2 sentences to describe what the following {filetype} function does:

\`\`\`{filetype}
{code_block}
\`\`\`
  ]],
      instruction_prompt = [[
Context: filename: \`{filename}\`

Instruction: ***{instruction}***

  ]],
    })
  end,
}
