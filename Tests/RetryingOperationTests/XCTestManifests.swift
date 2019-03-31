#if !canImport(ObjectiveC)
import XCTest

extension RetryingOperationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RetryingOperationTests = [
        ("testBasicAsynchronousRetryingOperation1Retry", testBasicAsynchronousRetryingOperation1Retry),
        ("testBasicAsynchronousRetryingOperationNoRetries", testBasicAsynchronousRetryingOperationNoRetries),
        ("testBasicSynchronousRetryableOperationInWrapper1Retry", testBasicSynchronousRetryableOperationInWrapper1Retry),
        ("testBasicSynchronousRetryableOperationInWrapperNoRetries", testBasicSynchronousRetryableOperationInWrapperNoRetries),
        ("testBasicSynchronousRetryingOperation1Retry", testBasicSynchronousRetryingOperation1Retry),
        ("testBasicSynchronousRetryingOperationNoRetries", testBasicSynchronousRetryingOperationNoRetries),
        ("testCancelledBasicSynchronousRetryableOperationInWrapper1Retry", testCancelledBasicSynchronousRetryableOperationInWrapper1Retry),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RetryingOperationTests.__allTests__RetryingOperationTests),
    ]
}
#endif