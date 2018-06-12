//
//  Globals.swift
//  SwiftlySalesforce
//
//  For license & details see: https://www.github.com/mike4aday/SwiftlySalesforce
//  Copyright (c) 2016. All rights reserved.
//

import PromiseKit

public typealias Promise = PromiseKit.Promise
internal typealias DataResponse = (data: Data, response: URLResponse)
internal typealias Validator<T> = (T) throws -> T

/// An "alias" for PromiseKit's "firstly" function
/// See "firstly" at https://github.com/mxcl/PromiseKit/blob/master/Documentation/GettingStarted.md#firstly
public func first<U: Thenable>(execute body: () throws -> U) -> Promise<U.T> {
	return PromiseKit.firstly(execute: body)
}
