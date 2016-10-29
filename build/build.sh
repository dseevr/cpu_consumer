#!/bin/sh

set -eu

build_output_dir="/build/output"
binary_output_path="${build_output_dir}/cpu_consumer"

if [ ! -d "${build_output_dir}" ]; then
    echo >&2 "You must bind mount $(pwd)${build_output_dir} into the container at ${build_output_dir}"
    exit 1
fi

cd /tmp

nasm -f elf64 -o main.o main.asm && ld -o cpu_consumer main.o && strip cpu_consumer

mv cpu_consumer "${binary_output_path}"

echo "Wrote binary to ${binary_output_path}"
