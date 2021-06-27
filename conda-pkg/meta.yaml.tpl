package:
  name: pylibjpeg-rle
  version: ${version}

source:
  git_rev: v${version}
  git_url: https://github.com/wvxvw/pylibjpeg-rle.git

build:
  binary_relocation: true

requirements:
  build:
    - python==${python_version}
    - setuptools
    - setuptools-rust

  run:
    - python==${python_version}
    - numpy

test:
  imports:
    - rle

about:
  home: https://github.com/pydicom/pylibjpeg-rle
  license: MIT
  summary: >
    A fast DICOM RLE plugin for pylibjpeg, written in Rust with a
    Python 3.6+ wrapper.
