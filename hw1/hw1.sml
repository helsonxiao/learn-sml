fun is_older (d1 : int*int*int, d2 : int*int*int) =
    let
	val year1 = #1 d1
	val year2 = #1 d2
	val month1 = #2 d1
	val month2 = #2 d2
	val day1 = #3 d1
	val day2 = #3 d2
    in
	year1 < year2 orelse
	(year1 = year2 andalso month1 < month2) orelse
	(year1 = year2 andalso month1 = month2 andalso day1 < day2)
    end

	
fun number_in_month (dl : (int*int*int) list, m : int) =
    if null dl
    then 0
    else if #2 (hd dl) = m
    then 1 + number_in_month(tl dl, m)
    else number_in_month(tl dl, m)


fun number_in_months (dl : (int*int*int) list, ml : int list) =
    if null ml
    then 0
    else number_in_month(dl, hd ml) + number_in_months(dl, tl ml)


fun dates_in_month (dl : (int*int*int) list, m : int) =
    if null dl
    then []
    else if #2 (hd dl) = m
    then hd dl :: dates_in_month(tl dl, m)
    else dates_in_month(tl dl, m)

(*
fun dates_in_months (dl : (int*int*int) list, ml : int list) =
    let
	fun append_dates (ds : (int*int*int) list, dl : (int*int*int) list) =
	    let
		val head = hd ds
		val tail = tl ds
	    in
		if null tail
		then
		    head :: dl
		else
		    head :: append_dates(tail, dl)
	    end
		
	fun get_date_by_months (ml : int list) =
	    let
		val month = hd ml;
		val tail = tl ml;
	    in
		if null tail
		then dates_in_month(dl, month)
		else append_dates(dates_in_month(dl, month), dates_in_months(dl, tail))
	    end
    in
	get_date_by_months ml
    end
*)

		       
fun dates_in_months(dl : (int * int * int) list, ml : int list) =
    if null ml
    then []
    else dates_in_month(dl, hd ml) @ dates_in_months(dl, tl ml)
		       
	
fun get_nth (sl : string list, n : int) =
    if n = 1
    then hd sl
    else get_nth(tl sl, n-1)

	
fun date_to_string (d : int*int*int) =
    let
	val months = ["January", "February", "March", "April", "May", "June",
		      "July", "August", "September", "October", "November", "December"]
	val year = #1 d
	val month = #2 d
	val day = #3 d
	val month_s = get_nth(months, month)
    in
	month_s ^ " " ^ (Int.toString day) ^ ", " ^ (Int.toString year)
    end


fun number_before_reaching_sum (sum : int, ns : int list) =
    if sum <= hd ns
    then 0
    else 1 + number_before_reaching_sum(sum - hd ns, tl ns)


fun what_month (sum : int) =
    let
	val days_list = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
	number_before_reaching_sum(sum, days_list) + 1
    end


fun month_range (d1 : int, d2 : int) =
    if d1 > d2
    then []
    else what_month d1 :: month_range(d1+1, d2)


fun oldest (dl : (int*int*int) list) =
    if null dl
    then NONE
    else
	let	
	    fun find (dl : (int*int*int) list) =
		let
		    val tail = tl dl
		    val head = hd dl
		in
		    if null tail
		    then head
		    else
			let
			    val tl_oldest = find tail
			in
			    if is_older(tl_oldest, head)
			    then tl_oldest
			    else head
			end
		end
	in
	    SOME(find dl)
	end

(*
fun oldest (dates : (int * int * int) list) =
    if null dates
    then NONE
    else let 
             val ans = oldest(tl dates)
	 in 
       if isSome ans andalso is_older(valOf ans, hd dates)
	     then ans
	     else SOME (hd dates)
	 end 
*)
