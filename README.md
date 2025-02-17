# DIRECTIONS

Run [notebook.jl](https://github.com/blob/main/notebook.jl) via [Pluto](https://plutojl.org/).
Non-coders, check the directions for your platform below.

## Windows

1. Install and run [PlutoDesktop](https://github.com/JuliaPluto/PlutoDesktop/releases/download/v0.0.2/Pluto.Setup.0.0.2.exe).
2. Open [notebook.jl](https://github.com/blob/main/notebook.jl).
3. Upload a JSON to generate an interactive practice exam. There are some in the `data` folder.

## MacOS

1. Save [ExamPractice.app](https://github.com/eahenle/ExamPractice/blob/main/ExamPractice.app).
2. Drop [notebook.jl](https://github.com/blob/main/notebook.jl) onto it.
3. Upload a JSON to generate an interactive practice exam. There are some in the `data` folder.

Needs MacOS 10.11 or newer.

I don't have a Mac, so I can't test this at all (right now I literally don't know if it works at all).
PRs welcome.

## Web Client

Alternatively, the notebook can be run via a cloud service.

1. [Click Here](https://binder.plutojl.org) and wait for `Pluto.jl` to load.
2. Paste [this link](https://github.com/eahenle/ExamPractice/blob/main/notebook.jl) into the `Open a notebook` cell and click `Open`: [https://github.com/eahenle/ExamPractice/blob/main/notebook.jl](https://github.com/eahenle/ExamPractice/blob/main/notebook.jl)
3. Once the notebook has loaded, click on the blue `Run Notebook Code` button.
4. Upload a JSON to generate an interactive practice exam. There are some in the `data` folder.

If you have a better way to do it, PRs are welcome.

# Generating Questions

## Prompt

Try [this prompt](https://github.com/eahenle/ExamPractice/blob/main/prompt.txt) along with an attached file (e.g. a chapter PDF) to get ChatGPT to produce the questions in the proper format.

## Note

The JSON file must use the following format:

```json
{ 
    "exam" : [
        {
            "question" : "What's the capital of France?",
            "choices" : ["Paris", "New York", "Tokyo", "Berlin"],
            "answer" : "Paris",
            "explanation" : "Paris is the capital of France."
        },
        // additional questions...
    ]
}
```
