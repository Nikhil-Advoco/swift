// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

// RUN: not %target-swift-frontend %s -typecheck

// Issue found by https://github.com/benshan (Ben Shanfelder)

import Cocoa

protocol A: class {
    var target: AnyObject? { set } // FIXME: Missing "get" wrt extension on NSControl leads to crash.
}

class B: NSObject {
}

extension NSControl: A {}
