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
    if (1 + int_of_char c) < (int_of_char 'Z') then
        char_of_int (1 + int_of_char c)
    else
        char_of_int ((1 + int_of_char c) mod int_of_char 'Z' + (int_of_char 'A'))

let ft_rot_n n str = 
    String.map rotate_upper str


let main() =
    let x = ft_rot_n 1 "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
        print_endline x

let() = main()
