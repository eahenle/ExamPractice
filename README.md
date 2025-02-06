# DIRECTIONS

1. [Click Here](https://binder.plutojl.org) and wait for `Pluto.jl` to load.
2. Paste this link into the `Open a notebook` cell and click `Open`: [https://github.com/eahenle/ExamPractice/blob/main/notebook.jl](https://github.com/eahenle/ExamPractice/blob/main/notebook.jl)
3. Once the notebook has loaded, click on the blue `Run Notebook Code` button.
4. Upload a JSON to generate an interactive practice exam. There's one for the midterm [here](https://raw.githubusercontent.com/eahenle/ExamPractice/refs/heads/main/MidtermReading.json) that you can save and then upload to the notebook.

# Generating Questions

## Prompt

Try [this prompt](https://github.com/eahenle/ExamPractice/blob/main/prompt.txt) along with a PDF to get ChatGPT to produce the questions in the proper format.

## Note

The JSON file must use the following format:

```json
{"exam" : [
    {
        "question" : "What's the capital of France?",
        "choices" : ["A. Paris", "B. New York", "C. Tokyo", "D. Berlin"],
        "answer" : "A. Paris",
        "explanation" : "Paris is the capital of France."
    },
    // additional questions...
]}
```
