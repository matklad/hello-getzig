# getzig

`getzig` is an idea for a zig version manager along the lines of gradle wrapper.

The following should work on both Linux and Windows:

```console
$ ./getzig.ps1
$ ./zig/zig run ./hello.zig
```

`getzig.ps1` is a polyglot sh/powershell script which downloads a Zig release from the official website and puts it into `./zig/zig`.
