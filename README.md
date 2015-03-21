calcExecTime
========================

Util function to calculate the execution time of blocks and functions. 

How to use
========================

* Block execution time:

```objective-c
    execBlock block1 = ^{
      
        for ( size_t i = 0; i < [self.array count]; i++ )
        {
            NSLog(@"%@", [self.array objectAtIndex:i] );
        }
        
    };
    
    [Utils calcExecTime:block1 message:@"For Loop"];

```

* Function execution time:

```objective-c
    [Utils calcExecTime:^{
        [self tryEnumerator];
    } message:@"NSEnumerator"];

```


License
========

 Copyright 2015 Pablo GM <invanzert@gmail.com>. All Rights Reserved.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
