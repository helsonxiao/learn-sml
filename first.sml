(* This is my first program *)
(* static environment is created before program's ever running *)
(* after type checking, program will run in the dynamic environment *)

val x = 34;
(* static environment: x: int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x: int, y: int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);

val abs_of_z = if z < 0 then 0 - z else z;
