# CGtk
A wrapper around gtk-3.x for Swift

## Building

You cannot build this package directly, as this is just a C header file wrapper for [SwiftGtk](https://github.com/rhx/SwiftGtk) that you embed into your own project (see 'Usage' below).

## Usage

To use CGtk, you need to use the [Swift Package Manager](https://swift.org/package-manager/).  Simply add `SwiftGtk` as a dependency to your `Package.swift` file, e.g.:

```Swift
import PackageDescription

let package = Package(
    name: "MyPackage",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftGtk.git", majorVersion: 3)
    ]
)
```

### Example Projects

You can find the following example projects on GitHub that show how to use SwiftGtk:

 * [SwiftHelloGtk](https://github.com/rhx/SwiftHelloGtk)
 * [SwiftHelloGtkBuilder](https://github.com/rhx/SwiftHelloGtkBuilder)
 

## Troubleshooting
Here are some common errors you might encounter and how to fix them.

### Old Swift toolchain or Xcode
If you get an error such as

	$ ./build.sh
	error: unable to invoke subcommand: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-package (No such file or directory)

this probably means that your Swift toolchain is too old.  Make sure the latest toolchain (Swift 3.1 at the time of this writing) is the one that is found when you run the Swift compiler, e.g.:

	$ swift --version
	Apple Swift version 3.1 (swiftlang-802.0.51 clang-802.0.41)
	Target: x86_64-apple-macosx10.9

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 3.1 (swift-3.1-RELEASE)
	Target: x86_64-unknown-linux-gnu

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Devel/Xcode-beta.app
	xcode-select --install
