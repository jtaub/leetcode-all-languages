import base64
import math
import os
from typing import Any, Mapping

import cairosvg


def plot_sorted_data_as_png(problem_name: str, data: Mapping[str, Mapping[str, Any]]):
    """Given the name of a leetcode problem and a dictionary of the performance results,
    plot the results and save as both an SVG and a PNG file"""
    # sort data by time, use name as tie breaker
    sorted_data = dict(
        sorted(data.items(), key=lambda item: (item[1]["time"], item[0]))
    )
    svg_content = create_bar_chart_svg(problem_name, sorted_data)
    output_file = f"results/{problem_name.replace(' ', '_')}.svg"
    save_as_svg(output_file, svg_content)
    save_as_png(output_file)


def create_bar_chart_svg(
    problem_name: str,
    data: Mapping[str, Mapping[str, Any]],
    y_label="Time (ms)",
    x_label="Language",
    font_color="white",
    font_family="Consolas",
    font_size="24px",
    bar_color="#8884d8",
    top_margin=50,
    bottom_margin=50,
    left_margin=60,
    right_margin=20,
    svg_height=400,
    column_width=50,
    bar_width=40,
    image_offset=20,
    text_offset=5,
    grid_spacing=75,
    image_height=30,
    label_margin=10,
) -> str:
    """Builds a string containing an SVG representation of a bar chart."""
    chart_height = svg_height - top_margin - bottom_margin
    chart_bottom = svg_height - bottom_margin
    width = len(data) * column_width + left_margin + right_margin

    max_time = max(result["time"] for result in data.values())
    max_height = math.ceil(max_time / 5) * 5  # round up to the nearest multiple of 5
    title = f"LeetCode {problem_name} Benchmarks"

    svg_elements = [
        f'<svg viewBox="0 0 {width} {svg_height}" xmlns="http://www.w3.org/2000/svg">'
        f'<text x="{width/2}" y="{top_margin/2}" text-anchor="middle" fill="{font_color}" font-family="{font_family}" font-size="{font_size}">{title}</text>',
        f'<text x="{left_margin/3}" y="{svg_height/2}" text-anchor="middle" fill="{font_color}" font-family="{font_family}" font-size="{font_size}" transform="rotate(-90,{left_margin/3},{svg_height/2})">{y_label}</text>',
        f'<text x="{width/2}" y="{svg_height+bottom_margin/2}" text-anchor="middle" fill="{font_color}" font-family="{font_family}" font-size="{font_size}">{x_label}</text>',
    ]

    for y in range(top_margin, chart_bottom + grid_spacing, grid_spacing):
        actual_value = int((chart_bottom - y) * max_height / chart_height)
        svg_elements.append(
            f'<line x1="{left_margin}" y1="{y}" x2="{width - right_margin}" y2="{y}" stroke="#e0e0e0"/>'
        )
        svg_elements.append(
            f'<text x="{left_margin - label_margin}" y="{y + text_offset}" text-anchor="end" fill="{font_color}" font-family="{font_family}" font-size="{font_size}" shape-rendering="geometricPrecision">{actual_value}</text>'
        )

    images_directory = os.path.dirname(os.path.realpath(__file__)) + "/logos"
    for i, (language, performance_results) in enumerate(data.items()):
        x = left_margin + 2 * label_margin + i * column_width
        height = (performance_results["time"] / max_height) * chart_height
        svg_elements.append(
            f'<rect x="{x - 15}" y="{chart_bottom - height}" width="{bar_width}" height="{height}" fill="{bar_color}"/>'
        )
        image_name = performance_results.get("image") or f"{language}.svg"
        image_path = f"{images_directory}/{image_name}"
        base64_image = image_to_base64(image_path)
        svg_elements.append(
            f'<image x="{x - image_offset}" y="{chart_bottom + label_margin}" width="{column_width}" height="{image_height}" href="{base64_image}"/>'
        )

    svg_elements.append("</svg>")
    return "\n".join(svg_elements)


def image_to_base64(image_path):
    """Encode an SVG image to base64."""
    with open(image_path, "rb") as img:
        encoded = base64.b64encode(img.read()).decode("utf-8")
        extension = os.path.splitext(image_path)[1].lower()
        mime_type = "image/svg+xml" if extension == ".svg" else "image/png"
        return f"data:{mime_type};base64,{encoded}"


def save_as_svg(svg_file_name: str, svg_content: str):
    with open(svg_file_name, "w") as f:
        f.write(svg_content)


def save_as_png(svg_file: str, png_file="", width=2560, height=1440):
    """Saves our SVG file as a PNG file."""
    cairosvg.svg2png(
        url=svg_file,
        write_to=png_file or svg_file.replace(".svg", ".png"),
        output_width=width,
        output_height=height,
        background_color="black",
    )
