//
//  isPrime.swift
//  CodingTest
//
//  Created by Kim SungHun on 12/15/23.
//

import Foundation

func isPrime(num: Int) -> Bool {
	if (num < 4) {
		return num == 1 || num == 0 ? false : true
	}
	for i in 2...Int(sqrt(Double(num))) {
		if (num % i == 0) { return false }
	}
	return true
}
