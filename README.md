# up
UP is a batch utility that makes navigating deeply nested paths a bit easier via the windows command line.

Add up.bat to the your envronment PATH variable to use from any directory.

####Usage
```
Usage: up [argument]... [n]...
Go up or down [n] number of directories.
Assumes one directory where [n] is null

  -d               Go down [n] number of directories in the stack
                     If [n] is too large, you may be returned to the bottom
                     of the directory stack, i.e., "C:\". It is recommended to
                     view history first.
  -H               Lists directory history.
                     NOTE: directories are only added to the stack when navigating UP.
  -h, --help       Display this help dialog
```

####License
Copyright 2014-2015 Tyler Manifold

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
