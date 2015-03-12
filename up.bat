:: Copyright 2014-2015 Tyler Manifold
::
:: This program is free software: you can redistribute it and/or modify
:: it under the terms of the GNU General Public License as published by
:: the Free Software Foundation, either version 3 of the License, or
:: (at your option) any later version.
::
:: This program is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:: GNU General Public License for more details.
::
:: You should have received a copy of the GNU General Public License
:: along with this program.  If not, see <http://www.gnu.org/licenses/>.
::
:: This is a little script to make navigating deeply nested paths less painful

@echo off

set _ver=v1.2.1

if [%1] EQU [-d] (
    if [%2] EQU [] (
        popd
    )
    if [%2] NEQ [] ( 
            for /L %%y in (1, 1, %2) do (
            popd
        )
    )
        
)
if [%1] EQU [-H] (
    pushd )
if [%1] EQU [--help] goto help
if [%1] EQU [-h] (
    :help
    echo:
    echo %_ver%
    echo:
    echo Usage: up [argument]... [n]...
    echo Go up or down [n] number of directories.
    echo Assumes one directory where [n] is null
    echo:
    echo   -d               Go down [n] number of directories in the stack
    echo                      If [n] is too large, you may be returned to the bottom
    echo                      of the directory stack, i.e., "C:\". It is recommended to
    echo                      view history first.
    echo   -H               Lists directory history.
    echo                      NOTE: directories are only added to the stack when navigating UP.
    echo   -h, --help       Display this help dialog
    echo:
)


if [%2] EQU [] (
    if [%1] EQU [] (
        pushd .\
        cd .\..
    )
    if [%1] NEQ [] (        
        for /L %%x in (1, 1, %1) do (
           pushd .\
           cd .\..
        )
    )
)