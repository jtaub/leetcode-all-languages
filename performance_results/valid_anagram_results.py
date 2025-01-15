from bar_chart_builder import plot_sorted_data_as_png

if __name__ == "__main__":
    plot_sorted_data_as_png(
        problem_name="Contains Duplicate",
        data={
            "C": {"time": 0},
            "C#": {"time": 0},
            "C++": {"time": 0},
            # "Dart": {"time": 11},
            # "Elixir": {"time": 70, "image": "Elixir.png"},
            # "Erlang": {"time": 79, "image": "Erlang.png"},
            "Go": {"time": 0},
            "Java": {"time": 3},
            "JavaScript": {"time": 3, "image": "JavaScript.png"},
            "Kotlin": {"time": 3},
            # "PHP": {"time": 4},
            "Python": {"time": 5, "image": "Python.png"},
            # "Racket": {"time": 57},
            # "Ruby": {"time": 9},
            "Rust": {"time": 0},
            "Scala": {"time": 34, "image": "Scala.png"},
            "Swift": {"time": 7, "image": "Swift.png"},
            "TypeScript": {"time": 3},
        },
    )
