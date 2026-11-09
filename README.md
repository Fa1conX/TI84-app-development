# BJT Calculator for TI-84 Plus CE

This is a native C project for the TI-84 Plus CE. It is not a TI-BASIC or
TI-84 Plus CE Python project.

## Current milestone

The starter program in `src/main.c` is intentionally small. It clears the
calculator home screen, displays a native-program status message, and waits
for a key. The reusable equations in `src/bjt_math.c` are tested on the host
by `make host-test`.

The calculator build has not been run in this workspace because CEdev is not
currently installed or available on `PATH`.

## Install CEdev

Use the official CEdev release for macOS (Apple Silicon or Intel) from the
[CE C/C++ Toolchain getting-started guide](https://ce-programming.github.io/toolchain/static/getting-started.html).
Install it in a path without spaces, then add its `bin` directory to `PATH`.
Open a new shell and verify:

```sh
command -v cedev-config
command -v make
```

The project follows the official CEdev structure and makefile conventions.
From this directory, build with:

```sh
make
```

The native program should be written to `bin/BJTCALC.8xp`. Transfer that file
with TI Connect CE or run it in CEmu before using a physical calculator.

Run the host equation tests without CEdev:

```sh
make host-test
```

## OS compatibility

The official CEdev documentation currently warns that TI-84 Plus CE OS 5.5.0
and newer remove native C/assembly execution. Check the calculator's OS
version before treating an `Invalid` error or failed launch as a code defect.
Follow the current CEdev and TI-84 Plus CE documentation for the supported
loading process; do not update or downgrade the calculator as part of this
project without a deliberate decision.

## Planned implementation

After the native smoke test is loaded successfully, the UI will be expanded
incrementally with keyboard navigation, validated numeric input, fixed bias,
emitter bias, collector-feedback bias, voltage-divider bias, emitter
degeneration, region checks, and reference screens.
# TI84-app-development
