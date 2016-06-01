# buck-purescript
Set of macroses for Buck that brings support of PureScript to this build system

# API

``` python
ps_module(name,                 # Name of the module
          src = None,           # List of source file which belongs to the module
          modules = [],         # List of depended modules
          deps = [],            # List of external dependencies e.g. bower links
          tests = [],           # List of test files
```

New target equal to name will be created. It will gather all the sources and test files of a current module and depended modules, generates bower.json file using specified external dependencies and will build the project. If tests specified - new target test would be created which will run the tests when called
