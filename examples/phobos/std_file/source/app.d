import autowrap;


enum str = wrapDlang!(
    LibraryName("std_file"),
    Modules(
        Yes.alwaysExport,
        "std.file",
    )
);

// pragma(msg, str);
mixin(str);
