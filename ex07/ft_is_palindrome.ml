(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 15:10:45 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 15:28:13 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome str = 
    let rec first_and_last s f l = 
        if f = l || l < 0 then
            true
        else if String.get s f <> String.get s l then
            false
        else
            first_and_last s (f + 1) (l - 1)
    in first_and_last str 0 ((String.length str) - 1)

let main() =
    let x = ft_is_palindrome "racecar" in
    if x then
        print_endline "true"
    else
        print_endline "false";
    
    let x = ft_is_palindrome "bob" in
    if x then
        print_endline "true"
    else
        print_endline "false";
    
    let x = ft_is_palindrome "" in
    if x then
        print_endline "true"
    else
        print_endline "false";
    
    let x = ft_is_palindrome "no" in
    if x then
        print_endline "true"
    else
        print_endline "false"

let() = main()
