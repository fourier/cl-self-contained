# Common Lisp Self-Contained Example
This repository is an example of self-contained CL project. It has a main system definition and 2 submodules, and the file `project.lisp` which could be used on a system without QuickLisp to quickly get the development going.
The idea is to copy the `project.lisp` to the root folder of more complex projects to remove dependency on QuickLisp. Probably more features will be added to the project.

## Usage
- git clone the project somewhere.
- Update submodules (no need for this project, but in yours you likely add submodules to the modules/ directory instead of the dummy modules I've added):
```
git submodule update --init --recursive
```
- Load/compile the file `project.lisp` from your CL compiler/IDE (I've tested on LispWorks for Linux and Windows and with SBCL on Linux) and call a function from it to verify that everything works.
```
(load "/home/myuser/Sources/lisp/cl-self-contained/project.lisp")
```

- Test that everything works:

```
(self-contained:print-strings)
```
