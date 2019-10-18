//
//  DispatchAssert.swift
//  Basic
//
//  Created by Charles Osmer on 10/17/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

func assertOnMainQueue() {
    #if DEBUG
    dispatchPrecondition(condition: .onQueue(.main))
    #endif
}
