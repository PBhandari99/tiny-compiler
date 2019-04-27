open Printf

(* A very sophisticated compiler - insert the given integer into the mov
 * instruction at the correct place.
 * *)

let compile (program : int) : string =
  sprintf
    "\n\
    \    section .text\n\
    \    global assembly_code\n\
    \    assembly_code:\n\
    \        mov eax, %d\n\
    \        ret\n"
    program

(* Some Ocaml boilerplate for reading files and command-line arguments *)
let () =
  let input_file = open_in Sys.argv.(1) in
  let input_program = int_of_string (input_line input_file) in
  let program = compile input_program in
  printf "%s\n" program
