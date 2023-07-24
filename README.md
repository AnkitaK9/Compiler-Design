## Project Title: Three-Phase Compiler for C# Language
### Description

This project is a three-phase compiler for the C# programming language. Each phase performs essential tasks in the compilation process, starting from lexical analysis, followed by semantic analysis, and finally, generating intermediate code. The compiler is implemented in the C programming language and aims to translate C# source code into an intermediate representation for further optimization or target code generation.

## Phases

#### 1. Lexical Analyzer

The lexical analyzer is responsible for processing the input C# source code and breaking it down into a sequence of tokens. Tokens represent the smallest meaningful units in the language, such as identifiers, keywords, constants, and operators. The lexical analyzer removes unnecessary whitespace and comments, ensuring that the token stream is ready for the subsequent phases.

#### 2. Semantic Analyzer

After obtaining the token stream, the semantic analyzer performs a series of checks to ensure that the C# source code adheres to the language's rules and constraints. This phase validates the correctness of the code's structure, data types, scope rules, and the usage of functions and variables. The semantic analyzer helps detect and report errors that might not be apparent during the lexical analysis phase.

#### 3. Intermediate Code Generation

Once the semantic analysis is complete, the compiler proceeds to generate intermediate code from the validated C# source code. The intermediate code serves as an abstract representation of the original program. This phase aims to provide a common intermediate representation that can be optimized further or translated into machine code for different target architectures.

## Usage

#### 1) Clone the repository to your local machine.

``` 
https://github.com/AnkitaK9/Compiler-Design.git
```

#### 2) Navigate to the project directory.

```
cd Compiler-Design
```

#### 3) Ensure you have a compatible C compiler installed on your machine (e.g., GCC).

#### 4) Compile and run the lexical analyzer.
```
flex filename.l
gcc lex.yy.c
./a.out

````

#### 5) Run the Syntax analyzer.
```
bison -d file.l
flex file.l
gcc lex.yy.c file.tab.c
./a.out <testcasefile with extension>
```

#### 6) Generate the intermediate code and Symbol table.
```
flex Assignment.l
bison -d Assignment.y
gcc Assignment.tab.c
```

## Technologies Used
- C Programming Language: for implementing the compiler phases and transformations.
- GCC (GNU Compiler Collection): for compiling the C source code.
