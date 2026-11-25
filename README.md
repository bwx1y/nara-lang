# Nara Language

Compiler & tooling untuk bahasa pemrograman **Nara**.

## Struktur Proyek

```text
nara/
├── .github/
│   └── workflows/
│       └── ci.yml                 # Otomatisasi go test & linter setiap Pull Request
├── cmd/
│   └── nara/
│       └── main.go                # Entry point binary CLI `nara`
├── internal/
│   ├── cli/                       # Handler sub-command: init, run, build, add command
│   ├── config/                    # Parser & validator file `config.yaml`
│   ├── diagnostics/               # Formatter pesan error (file, baris, kolom, kode error)
│   ├── token/                     # Definisi jenis Token, Keyword, & posisi baris/kolom
│   ├── lexer/                     # Tokenisasi, komentar `#`, & Automatic Semicolon Insertion (ASI)
│   ├── ast/                       # Definisi node AST (Class, Interface, Method, Stmt, Expr)
│   ├── parser/                    # Recursive descent / Pratt parser & validasi Strict OOP
│   ├── sema/                      # Semantic Analyzer: Symbol Table, Type Checker, Visibility, Overloading
│   ├── codegen/                   # Transpiler AST -> kode `.go` (vtable, mangling, try/catch, CLI router)
│   ├── builder/                   # Pengelola temp dir, `go.mod` generator, & eksekusi `go build`
│   └── runtime/                   # Template kode runtime Go yang disuntikkan (Error, helper built-in)
├── testdata/                      # Golden tests: pasangan file `.nara` dan ekspektasi output/error
│   ├── valid/                     # Kasus uji yang harus sukses compile & run
│   └── invalid/                   # Kasus uji yang harus gagal (unused var, akses priv/mod, dll.)
├── examples/                      # Contoh proyek Nara utuh (misal: todo-cli, kalkulator OOP)
├── docs/                          # Dokumentasi spesifikasi (`spesifikasi_v2_5.md`) & panduan kontribusi
├── go.mod
├── go.sum
├── Makefile                       # Shortcut build, test, & install lokal
└── README.md
```
