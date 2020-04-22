let non_del X Y = 
    if X % Y =0   then false
                  else true

let rec pros X Y =
        if X=Y then true
        else (non_del X Y) && (pros X (Y+1))



let pr n = 
    match n with
    | 2 -> true
    | _ -> pros n 2 

let rec nod a b =
    if b = 0 then a
    else nod b (a % b)

let rec eiler a b k =
    if (nod a b)>0 then eiler a (b-1) k+1
    else eiler a (b-1) k
    


let rec loop n =
    let v = n%2
    printfn "%d" n
    match n with
    | 1->""
    | _-> if (v=0) then loop (n/2)
            else loop (3*n+1)

let rec fact n =
    match n with
    | 1->1
    | _-> n * fact (n-1)

let rec ind1 n sum =

    printfn "%d,%d" n sum
    match n with
    | 1-> sum+1
    | _ -> ind1 (n/10) (sum + fact (n%10))

let p9_5 = 
    let a = System.Convert.ToInt32(System.Console.ReadLine())
    ind1 a 0

[<EntryPoint>]
let main argv = 
    
    let Ans = p9_5
    System.Console.Write(Ans)
    let z=System.Console.ReadKey()
    
    0 // return an integer exit code