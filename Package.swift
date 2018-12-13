// swift-tools-version:4.0

import PackageDescription 

let package = Package(name: "CGtk",
	pkgConfig: "gtk-3.0 gdk-3.0 pangocairo pangoft2 pango gio-unix-2.0 glib-2.0",
	providers: [
		.brew(["gtk+3", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgtk3.0-dev", "libgdk3.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	]
)
