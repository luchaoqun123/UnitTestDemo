//
//  OutputWordsTest.m
//  UnitTestDemoTests
//
//  Created by DravenLu on 2020/1/4.
//  Copyright © 2020 SuBao Tech. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OutputWords.h"

@interface OutputWordsTest : XCTestCase

@end

@implementation OutputWordsTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *wordsToSay = [OutputWords getWordsRandom];
//    XCTAssertEqual(wordsToSay, @"A", @"0000000");//不通过,因为他们所在的地址不同
//    XCTAssertEqual是判断的地址
    
}

- (void)testEqual {
    NSString *str1 = @"1";
    NSString *str2 = @"1";
    NSString *str3 = str1;
    XCTAssertEqual(str1, str2, @"a1 and a2 should point to the same object"); // 通过测试
    XCTAssertEqual(str1, str3, @"a1 and a2 should point to the same object"); // 通过测试
}

//有返回值就不是testCase了
- (NSString *)testOutputSentences {
    NSString *wordsToSay = [OutputWords getWordsRandom];
    return wordsToSay;
}

//有入参就不是testCase了,传值可以用属性的形式来做
- (void)testOutputSentences:(NSString *)parameter {
//    NSString *wordsToSay = [OutputWords getWordsRandom];
//    return wordsToSay;
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
