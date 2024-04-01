#!/usr/bin/env bats

#wslgsu testing
@test "wslgsu - Help" {
  run out/wslgsu --help
  [ "${lines[0]}" = "wslgsu - Part of wslu, a collection of utilities for Windows Subsystem for Linux (WSL)" ]
  [ "${lines[1]}" = "Usage: wslgsu [-u USERNAME] [-n NAME] [-S] SERVICE/COMMAND" ]
  [ "${lines[2]}" = "wslgsu [-hvw]" ]
}

@test "wslgsu - Help - Alt." {
  run out/wslgsu -h
  [ "${lines[0]}" = "wslgsu - Part of wslu, a collection of utilities for Windows Subsystem for Linux (WSL)" ]
  [ "${lines[1]}" = "Usage: wslgsu [-u USERNAME] [-n NAME] [-S] SERVICE/COMMAND" ]
  [ "${lines[2]}" = "wslgsu [-hvw]" ]
}