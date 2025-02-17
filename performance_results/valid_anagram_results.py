from bar_chart_builder import plot_sorted_data_as_png

if __name__ == "__main__":
    plot_sorted_data_as_png(
        problem_name="Contains Duplicate",
        data={
            "C": {"time": 0},
            "C#": {"time": 0},
            "C++": {"time": 0},
            "Dart": {"time": 1},
            "Elixir": {"time": 10, "image": "Elixir.png"},
            "Erlang": {"time": 13, "image": "Erlang.png"},
            "Go": {"time": 0},
            "Java": {"time": 3},
            "JavaScript": {"time": 3, "image": "JavaScript.png"},
            "Kotlin": {"time": 3},
            "PHP": {"time": 0},
            "Python": {"time": 5, "image": "Python.png"},
            "Racket": {"time": 0},
            "Ruby": {"time": 0},
            "Rust": {"time": 0},
            "Scala": {"time": 34, "image": "Scala.png"},
            "Swift": {"time": 7, "image": "Swift.png"},
            "TypeScript": {"time": 3},
        },
    )
