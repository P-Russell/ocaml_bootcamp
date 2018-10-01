(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/01 11:03:40 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/01 11:17:31 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power base exp =
    if exp = 0 then 1
    else base * ft_power base (exp - 1)

let main() =
    let x = ft_power 2 4 in
    print_endline (string_of_int x);

    let y = ft_power 3 0 in
    print_endline (string_of_int y);

    let y = ft_power 0 5 in
    print_endline (string_of_int y);

    let y = ft_power 3 2 in
    print_endline (string_of_int y)

let () = main()
