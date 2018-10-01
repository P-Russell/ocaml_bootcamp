(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 13:49:00 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 14:12:35 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev str = 
    let rec reverse (str_rev : string)(index : int) = 
        if index >= 0 then
            begin
            print_char (String.get str_rev index); 
            reverse str_rev (index - 1)
            end
        else
            print_char '\n'
    in reverse str ((String.length str) - 1)

let main() =
    ft_print_rev "Hello World!";
    ft_print_rev "987654321";
    ft_print_rev "racecar"

let () = main()
