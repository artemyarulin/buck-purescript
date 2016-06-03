# buck-purescript
Set of macroses for [Buck](https://buckbuild.com) that brings support of [PureScript](http://www.purescript.org) to this build system

## API

``` python
ps_module(name,                      # Name of the module
          src = None,                # List of source file which belongs to the module
          modules = [],              # List of depended modules
          deps = [],                 # List of external dependencies e.g. bower links
          test = None)               # Test file associated with module

ps_test(name,                        # Name of the test module
        src = None,                  # Test file
		modules=[],                  # List of depended modules
		deps = [],                   # List of external dependencies e.g. bower links
		test_deps = test_def_deps)   # By default purescript-test-unit 6.0.1 and purescript-strongcheck 0.14.7 would be added to deps list, unless you pass test_deps
```

Bower links uses format like `[name] [version]`. Here the example:

``` python
## cat Lib/BL/BUCK

# Assumes Customer.purs exists in the same folder
ps_module('Customer')

# Assumes Company.purs exists and has a dependency on Customer.purs
ps_module('Company',modules=':Customer')

# Multiple files in the module
ps_module('Product',src=['Product.purs','ProductHelpers.purs'])

# Order.purs and test file OrderTest.purs
ps_module('Order',test='OrderTest.purs')

# Test file OrderIntegration.purs which uses Order module
ps_test('OrderIntegration',modules=':Order')

# Receipt.purs which has a bower dependency on "purescript-string":"0.1.0"
ps_module('Receipt',modules=':Order',deps='purescript-string 0.1.0')

# Test module ReceiptTests.purs with additional bower dependency
ps_test('ReceiptTests',modules=':Receipt',deps='my-own-integration-test-helper 0.1.0')
```

Have a look on [tests](tests/BUCK) for more examples

## Status

Active development - basic tests passes, although requires polishing

## Why PureScript with Buck

TODO: Try to sell both of them

## How does it work

TODO: Add horror story about RegEx and bash madness

## Requirements

TODO: Add that it's probably doesn't work on Windows, but who cares...

## Installation

TODO: How to copy a file, instruction with images
