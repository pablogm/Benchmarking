//
//  Utils.m
/*
 * Copyright 2014 Pablo GM <invanzert@gmail.com>. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "Utils.h"
#import <QuartzCore/QuartzCore.h>

@implementation Utils


#pragma mark - Benchmark

+ (void)calcExecTime:(execBlock)block message:(NSString*)message
{
    CFTimeInterval startTime = CACurrentMediaTime();
    {
        if( block ) block();
    }
    CFTimeInterval endTime = CACurrentMediaTime();
    
    NSLog(@"[%@] Total Runtime: %g ms", message, 1000 * (endTime - startTime));
}

@end