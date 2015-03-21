//
//  ViewController.m
//  Benchmarking
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


#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@property (strong, nonatomic)  NSMutableArray *array;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    self.array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //------------------------------------------------------
    
    execBlock block1 = ^{
      
        for ( size_t i = 0; i < [self.array count]; i++ )
        {
            NSLog(@"%@", [self.array objectAtIndex:i] );
        }
        
    };
    
    [Utils calcExecTime:block1 message:@"For Loop"];
    
    //------------------------------------------------------
    
    execBlock block2 = ^{
        
        for ( NSString *s in self.array )
        {
            NSLog(@"%@", s );
        }
        
    };
    
    [Utils calcExecTime:block2 message:@"Fast Enumeration"];
    
    //------------------------------------------------------
    
    [Utils calcExecTime:^{
        [self tryEnumerator];
    } message:@"NSEnumerator"];
}

- (void)tryEnumerator
{
    NSEnumerator *enumerator = [self.array objectEnumerator];
    
    NSString *s;
    
    while (s = [enumerator nextObject])
    {
        NSLog(@"%@", s );
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
