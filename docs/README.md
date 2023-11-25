# `cv.typ` Example Setup

This is an example setup for the `cv.typ` template. This repository shows how to use the template to easily create a CV and multiple resumes with easily maintainable content, consistent formatting, and minimal effort. All one has to do is to input the data in the YAML files, and the template will take care of the rest.

The data for each CV/résumé iteration is stored in a separate YAML file, and the template is written in [Typst], a modern alternative typestting language to $\LaTeX$.

## Installation

### Prerequisites

- [Typst](https://github.com/typst/typst) is installed and available in the `PATH`.
  - **Windows**: Download the `.exe` binary from the latest release in the [releases page](https://github.com/typst/typst/releases/download/latest/typst-x86_64-pc-windows-msvc.zip) or install ut using `winget`: `winget install --id Typst.Typst`.
  - **macOS**: Download it from the latest release in the [releases page](https://github.com/typst/typst/releases) or install it using [Homebrew]: `brew install typst`.
  - **Linux**: Download it from the latest release in the [releases page](https://github.com/typst/typst/releases) or install it using [Cargo]: `cargo install --git https://github.com/typst/typst`.
- Optional:
  - This is for the GitHub Actions workflow for automatically compiling the CV and
    résumés PDF and uploading them to Cloudflare R2 for easy URL access.
    - GitHub Actions is enabled for the repository.
    - Cloudflare R2 credentials are available in the repository secrets, see the [`compile.yml`](../.github/workflows/compile.yml) file.

### Setup

1. Fork and clone this repository. Initialize the repository if you are not cloning it.
2. Run `make setup` to setup the repository. This will initialize the `template` submodule.
3. And you are done! You can now start editing the Typst and YAML files to create your CV and résumés.

## Usage

### Compiling

Assuming that your file for the cv is `cv.typ`, to compile the CV use the `make cv` command in the root of the repository. This will compile the CV and save it in the `docs` directory.

To compile all the `*.typ` files in the root of the repository, use the `make all` command. This will compile all the files to PDF and save them in the `docs` directory.

### GitHub Actions

The repository is setup with a GitHub Actions workflow that automatically compiles the Typst files and uploads them to Cloudflare R2 (S3-compatible storage). The workflow is triggered manually by default, but can be configured to run on every push to the repository.
