#!/bin/bash

packages=(
  'editorconfig'
  'auto-update-packages'
  'color-picker'
  'emmet'
  'file-icons'
  'highlight-selected'
  'minimap'
  'pigments'
  'language-postcss'
  'linter'
  'minimap-linter'
)

for package in "${packages[@]}"
do
  apm install $package
done
