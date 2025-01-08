from bar_chart_builder import plot_sorted_data_as_png

if __name__ == "__main__":
    plot_sorted_data_as_png(
        problem_name="Two Sum",
        data={
            "C": {"time": 2},
            "C (loops)": {"time": 99, "image": "C.svg"},
            "C#": {"time": 3},
            "C++": {"time": 2},
            "Dart": {"time": 7},
            "Elixir": {"time": 3, "image": "Elixir.png"},
            "Erlang": {"time": 2, "image": "Erlang.png"},
            "Go": {"time": 0},
            "Java": {"time": 2},
            "JavaScript": {"time": 1, "image": "JavaScript.png"},
            "Kotlin": {"time": 2},
            "Kotlin (functional)": {"time": 20, "image": "Kotlin.svg"},
            "PHP": {"time": 1},
            "Python": {"time": 0, "image": "Python.png"},
            "Racket": {"time": 0},
            "Ruby": {"time": 0},
            "Rust": {"time": 0},
            "Scala": {"time": 25, "image": "Scala.png"},
            "Swift": {"time": 0, "image": "Swift.png"},
            "TypeScript": {"time": 0},
        },
    )
