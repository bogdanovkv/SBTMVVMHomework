//
//  KVBModel.m
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import "KVBModel.h"
#import "KVBViewModel.h"
#import "KVBViewModelProptocol.h"

@implementation KVBModel


-(void)setCounter:(NSInteger)counter
{
    if(counter>=0)
    {
        _counter = counter;
        [self.viewModel counterHasChanged:counter];
    }
}

-(void)incrementCounter
{
    self.counter++;
}
-(void)decrementCounter
{
    self.counter--;
}

@end
