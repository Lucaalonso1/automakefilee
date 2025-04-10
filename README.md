# AutoMakefile

A bash script that automatically generates Makefiles for C projects based on a configuration file.

## Description

AutoMakefile simplifies the Makefile creation process by reading a configuration file and generating a standardized Makefile with common targets. It handles:

- Source, header, and library directories
- Compiler and compilation flags
- Project-specific settings
- Clean, build, and rebuild targets
- Backup and version management

## Usage

```bash
./automakefile <config_file>
```

## Configuration File Format

The configuration file uses a key-value format with semicolons as separators:

```
PROJECT_DIR;my_project
SOURCES_DIR;src
HEADERS_DIR;include
LIBS_DIR;lib
EXEC;my_program
CC;gcc
CFLAGS;-Wall -Wextra
LDFLAGS;-lm
BCK_DIR;backup
ZIP;zip
ZIPFLAGS;-r
UNZIP;unzip
UNZIPFLAGS;-o
main.c;
utils.c;
```

Required fields:
- PROJECT_DIR: The name of your project
- At least one source file (*.c)

## Generated Makefile Features

The generated Makefile includes:
- Standard compilation targets (all, clean, fclean, re)
- Proper header and source directory handling
- Archive creation and management (backup)
- Version numbering

## Example

```bash
./automakefile my_config.conf
```

This will generate a Makefile in the same directory as your configuration file. 