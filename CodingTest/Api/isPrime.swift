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

// 한 두 개의 소수를 판별하는 것이 아니라 대량의 소수를 한꺼번에 판별하고자 할 때 사용하는 것이 바로 에라토스테네스의 체.
// 에라토스테네스의 체는 가장 먼저 소수를 판별할 범위만큼 배열을 할당에 그 인덱스에 해당하는 값을 넣어줍니다.
var numbers = Array(repeating: 0, count: 1000001)
for i in 2...1000000{
	numbers[i] = i
}
// 2부터 판단할 범위까지 가는데, 시작은 그 수의 배수부터 시작하고 그 수 만큼 건너가서 확인
// 2부터 확인한다고 하면 2+2=4, 4부터 확인 시작하고 계속 +2 하면서 확인
for i in 2...1000000{
		if numbers[i] == 0{continue}
		for j in stride(from: i + i, through: 1000000, by: i){
			numbers[j] = 0
		}
}
