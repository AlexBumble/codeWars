//
//  findNB.swift
//  
//
//  Created by Алексей Бузов on 30/07/2019.
//

import Foundation

func    findNb(_ number: Int) -> Int {
    
    var res = 0
    var x = 0
    
    while x != number {
        x = x + ft_recursive_power(res, 3)
        res += 1
        if x > number {
            return -1
        }
    }
    return res - 1
}

func    ft_recursive_power(_ nb: Int, _ power: Int) -> Int {
    if (power < 0)
    {
        return (0)
    }
    else if (power == 0)
    {
        return (1)
    }
    else
    {
        return (nb * ft_recursive_power(nb, power - 1))
    }
}


findNb(4183059834009)
findNb(24723578342962)
findNb(40539911473216)
findNb(135440716410000)
findNb(26825883955641)
