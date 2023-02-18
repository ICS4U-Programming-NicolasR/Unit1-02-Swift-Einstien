//
// Einstein.swift
//
//  Created by Nicolas Riscalas
//  Created on 2023-02-17
//  Version 1.0
//  Copyright (c) 2023 Nicolas Riscalas. All rights reserved.
//
//  Calculates the amount of energy per mass
import Foundation
import Glibc
// Set constants
let speedOfLight2 = pow(299792458.0, 2.0)

// Ask for input
print("What is the mass of your object?")
//Try to get the input as a double if the response is nil then print an error
if let mass = Double(readLine()!) {
    // If statement to see if the input matches the default values
    if mass >= 0 {
        // Calculate
        let energy = mass * speedOfLight2
        let output = String(format: "The total energy of the system is %.3e", energy)
        print(output) 
    } else {
        print("Although mass can technically be negative we will only be calculating positive mass")
    }
} else {
    // Print error
    print("Could not convert type String to Integer (please enter in a real number)")
}