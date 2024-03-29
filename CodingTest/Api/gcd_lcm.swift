//
//  GCD_LCM.swift
//  CodingTest
//
//  Created by Kim SungHun on 1/27/24.
//

import Foundation

/// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
		if b == 0 {
				return a
		} else {
				return gcd(b, a % b)
		}
}

/// 최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
		return a * b / gcd(a, b)
}
