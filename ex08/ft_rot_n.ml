(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 15:31:29 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 15:52:30 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_upper (c : char) = 
    c >= 'A' && c <= 'Z'

let is_lower (c : char) = 
    c >= 'a' && c <= 'z'

let rotate_upper (n : int)(c : char) = 
    if (n + int_of_char c) < (int_of_char 'Z') then
        char_of_int (n + int_of_char c)
    else
        char_of_int ((n + int_of_char c) + (int_of_char 'A'))

let ft_rot_n n str = 
    let 


let main() =
    ft_rot_n 1 "ABCDEF"

let() = main()
