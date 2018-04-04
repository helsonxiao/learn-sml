fun max(xs : int list) =
    if null xs
    then NONE
    else
	let
	    val tl_max = max(tl xs)
	in
	    if isSome tl_max andalso valOf tl_max > hd xs
	    then tl_max
	    else SOME(hd xs)
	end

fun max2(xs : int list) =
    if null xs
    then NONE
    else
	let
	    fun max_nonempty(xs : int list) =
		if null (tl xs)
		then hd xs
		else
		    let val tl_max = max_nonempty(tl xs)
		    in
			if tl_max > hd xs
			then tl_max
			else hd xs
		    end
	in
	    SOME(max_nonempty xs)
	end
