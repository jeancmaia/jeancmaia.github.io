.PHONY: all setup render serve clean

FILE ?=

all: setup render

setup:
	uv sync

render:
	uv run quarto render $(FILE)

serve:
	uv run quarto preview

clean:
	quarto clean
