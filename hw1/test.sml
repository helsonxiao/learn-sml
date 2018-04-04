(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)


val test1 = is_older ((1,2,3),(2,3,4)) = true

val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1

val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3

val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]

val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"

val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"

val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3

val test9 = what_month 70 = 3

val test10 = month_range (31, 34) = [1,2,2,2]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)

(*
prob12 tests failed to run (most likely caused by an incorrect function signature in the submission)
prob13 tests failed to run (most likely caused by an incorrect function signature in the submission)
number_in_month: Tested how many of these: [] were in month: 2. The correct answer was: 0 but your function said otherwise. [Empty exception thrown]
number_in_months: Tried to find the number of these dates: [] in these months: [2]. There should have been 0, but your function said otherwise. [Empty exception thrown]
number_in_months: Tried to find the number of these dates: [(1,2,25),(3,5,26),(1,12,29),(3,2,28),(1,2,27),(1,2,25),(6,7,8)] in these months: []. There should have been 0, but your function said otherwise. [Empty exception thrown]
dates_in_month: Tried to find all the dates from this list: [] in the month: 2. The correct answer was: [] but your function said otherwise. [Empty exception thrown]
dates_in_months: Tried to find the dates from this list: [(1,2,25),(3,5,26),(1,12,29),(3,2,28),(1,2,27),(1,2,25),(6,7,8)] that were in these months: []. The correct answer was (unordered): [] but your function said otherwise. [Empty exception thrown]
dates_in_months: Tried to find the dates from this list: [] that were in these months: [2,5,7]. The correct answer was (unordered): [] but your function said otherwise. [Empty exception thrown]
get_nth: Tried to get element number: 1 of list: [STr] which should have been: STr but your function said otherwise. [Empty exception thrown]
get_nth: Tried to get element number: 3 of list: [1,2,3] which should have been: 3 but your function said otherwise. [Empty exception thrown]
get_nth: Tried to get element number: 2 of list: [0,1] which should have been: 1 but your function said otherwise. [Empty exception thrown]

Because the auto-grader gave a score above 80, here is the link to a message from a very cute dog: https://drive.google.com/file/d/0B5sUgbs6aDNpRDlPRHhkdTVEUXM/view?pref=2&pli=1
*)
