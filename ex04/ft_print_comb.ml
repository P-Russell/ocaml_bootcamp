(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 13:30:01 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 13:45:36 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb() = 
    let rec from x y z =
        print_int x;
        print_int y;
        print_int z;
        if x < 7 then
            print_string ", ";
        if z < 9 then
            from x y (z + 1)
        else if y < 8 then
            from x (y + 1) (y + 2)
        else if x < 7 then
            from (x + 1) (x + 2) (x + 3)
    in 
    from 0 1 2;
    print_string "\n"

let main() =
    ft_print_comb()

let () = main()
