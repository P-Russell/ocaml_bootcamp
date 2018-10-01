(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 15:31:29 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 15:58:12 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_upper (c : char) = 
    c >= 'A' && c <= 'Z'

let is_lower (c : char) = 
    c >= 'a' && c <= 'z'

let rotate_upper (c : char) = 
    if (1 + int_of_char c) <= (int_of_char 'Z') then
        char_of_int (1 + int_of_char c)
    else
        char_of_int (int_of_char c mod int_of_char 'Z' + (int_of_char 'A'))

let rotate_lower (c : char) = 
    if (1 + int_of_char c) <= (int_of_char 'z') then
        char_of_int (1 + int_of_char c)
    else
        char_of_int (int_of_char c mod int_of_char 'z' + (int_of_char 'a'))

let rot_one (c : char) = 
    if is_upper c then
        rotate_upper c
    else if is_lower c then
        rotate_lower c
    else
        c


let rec ft_rot_n n str = 
    if n <= 0 then
        str
    else
        begin
        ft_rot_n (n - 1) (String.map rot_one str);
        end


let main() =
    let x = ft_rot_n 1 "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
        print_endline x;

    let x = ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz" in
        print_endline x
let() = main()
