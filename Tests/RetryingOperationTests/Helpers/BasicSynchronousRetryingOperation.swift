/*
Copyright 2018 happn

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

import Foundation
import RetryingOperation



final class BasicSynchronousRetryingOperation : RetryingOperation, @unchecked /*Probably*/Sendable {
	
	let nRetries: Int
	var checkStr = ""
	
	private var nStart = 0
	
	init(nRetries r: Int) {
		nRetries = r
	}
	
	override func startBaseOperation(isRetry: Bool) {
		nStart += 1
		checkStr += "."
		Thread.sleep(forTimeInterval: 0.25)
		if nStart <= nRetries {baseOperationEnded(needsRetryIn: 0.1)}
		else                  {baseOperationEnded()}
	}
	
	override var isAsynchronous: Bool {
		return false
	}
	
}
