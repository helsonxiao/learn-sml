fun countfrom1(to : int) =
    let
	fun count(from : int) =
	    if from = to
	    then from::[]
	    else from::count(from+1)
    in
	count 1
    end
	
