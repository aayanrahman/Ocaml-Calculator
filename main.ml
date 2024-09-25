(* main.ml *)

(* Open the Calculator module *)
open Calculator

(* Function to read user input *)
let read_input prompt =
  print_string (prompt ^ ": ");
  read_line ()

(* Main program *)
let () =
  print_endline "Welcome to OCaml Calculator!";
  
  try
    (* Read input from the user *)
    let x = int_of_string (read_input "Enter the first number") in
    let op_str = read_input "Enter the operation (+, -, *, /)" in
    let y = int_of_string (read_input "Enter the second number") in

    (* Convert the operation string to a type *)
    let op = Calculator.operation_of_string op_str in

    (* Perform the calculation *)
    let result = Calculator.calculate op x y in
    Printf.printf "Result: %d\n" result

  with
  | Failure msg -> print_endline ("Error: " ^ msg)
  | _ -> print_endline "An unknown error occurred."
