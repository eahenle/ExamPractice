# Practice Exam Generator

1. [Click Here](https://binder.plutojl.org)
2. Paste this link into the `Open a notebook` cell: [https://github.com/eahenle/ExamPractice/blob/main/notebook.jl](https://github.com/eahenle/ExamPractice/blob/main/notebook.jl)
3. Upload a JSON to generate an interactive practice exam.

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
