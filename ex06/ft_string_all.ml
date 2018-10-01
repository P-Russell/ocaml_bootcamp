(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 14:15:17 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 15:07:53 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_digit (c : char) = 
    c >= '0' && c <= '9'

let ft_string_all f s =
    let rec check_at funct str index = 
        if index = (String.length str) then
            true
        else if f (String.get str index) then
            check_at funct str (index + 1)
        else
            false
    in check_at f s 0

let main() =
    let x = ft_string_all is_digit "123F56789" in 
    if x then
        print_endline "true"
    else
        print_endline "false";
    
    let x = ft_string_all is_digit "123456789" in 
    if x then
        print_endline "true"
    else
        print_endline "false";
    
    let x = ft_string_all is_digit "ble" in 
    if x then
        print_endline "true"
    else
        print_endline "false"

let () = main()
