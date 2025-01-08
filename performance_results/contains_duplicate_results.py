from bar_chart_builder import plot_sorted_data_as_png

if __name__ == "__main__":
    plot_sorted_data_as_png(
        problem_name="Two Sum",
        data={
            "C": {"time": 35},
            "C#": {"time": 13},
            "C++": {"time": 17},
            # "Dart": {"time": 7},
            # "Elixir": {"time": 3, "image": "Elixir.png"},
            # "Erlang": {"time": 2, "image": "Erlang.png"},
            "Go": {"time": 9},
            "Java": {"time": 13},
            # "JavaScript": {"time": 1, "image": "JavaScript.png"},
            "Kotlin": {"time": 13},
            # "PHP": {"time": 1},
            "Python": {"time": 3, "image": "Python.png"},
            # "Racket": {"time": 0},
            "Ruby": {"time": 9},
            # "Rust": {"time": 0},
            # "Scala": {"time": 25, "image": "Scala.png"},
            "Swift": {"time": 4},
            # "TypeScript": {"time": 0},
        },
    )
