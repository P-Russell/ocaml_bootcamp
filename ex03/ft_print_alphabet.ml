(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 11:20:15 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 12:50:55 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet() = 
    let rec print_letters_starting_at x = 
        if x <= (int_of_char 'z') then
            begin
            print_char (char_of_int x);
            print_letters_starting_at (x + 1)
            end
        else
            print_char '\n' in
    print_letters_starting_at (int_of_char 'a')
    
let main() =
    ft_print_alphabet()

let () = main()
