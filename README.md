# Nara Language

Proyek compiler/interpreter untuk bahasa pemrograman **Nara**.

## Struktur Direktori

```text
nara-lang/
├── cmd/
│   └── nara/
│       └── main.go              # Entrypoint tipis, memanggil internal/cli
├── internal/
│   ├── cli/                     # Parsing argumen & flag CLI (run, build, check)
│   ├── driver/                  # Orkestrator pipeline: lexer -> parser -> sema -> codegen
│   ├── diag/                    # Error & warning reporting (Span, posisi, pretty-print)
│   ├── token/                   # Definisi token & struct Token
│   ├── lexer/                   # Tokenisasi source code
│   ├── ast/                     # Definisi node AST (Expr, Stmt, Decl)
│   ├── parser/                  # Parser: token -> AST
│   ├── sema/                    # Semantic analysis: scope, type check
│   ├── ir/                      # Intermediate Representation & optimasi (opsional)
│   └── codegen/                 # Code generator (target: C, bytecode, atau LLVM)
├── std/                         # Standard library bahasa Nara
├── examples/                    # Contoh program Nara (.nara)
├── testdata/                    # File uji end-to-end / golden tests
├── docs/                        # Spesifikasi tata bahasa (EBNF) & catatan desain
├── go.mod
└── README.md
```

## Pembagian Modul

- **`cmd/nara`**: Binary entrypoint utama.
- **`internal/`**: Komponen inti compiler yang tidak diekspos ke modul luar.
- **`std/`**: Library bawaan yang ditulis menggunakan Nara.
- **`examples/`**: Sampel kode untuk pengguna dan referensi sintaks.
- **`testdata/`**: Fixture testing untuk pipeline compiler.
- **`docs/`**: Dokumentasi teknis arsitektur dan grammar.
