//
//  SayWordsYouWantTest.m
//  UnitTestDemoTests
//
//  Created by DravenLu on 2019/12/10.
//  Copyright © 2019 DravenLu Tech. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SayWordsYouWant.h"

@interface SayWordsYouWantTest : XCTestCase

@property (nonatomic, copy) NSString *words;
@property (nonatomic, copy) NSString *sentences;

@end

@implementation SayWordsYouWantTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.words = @"A...Z";
    self.sentences = @"A sentences may be just a word or a body gestrue !";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.words = nil;
    self.sentences = nil;
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [SayWordsYouWant sayWordsYouWant:self.words];
}

- (void)testSaySentences {
    [SayWordsYouWant sayWordsYouWant:self.sentences];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
