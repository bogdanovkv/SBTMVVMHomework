//
//  KVBViewModel.m
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import "KVBViewModel.h"
#import "KVBModel.h"
#import "ViewController.h"
#import "KVBViewProtocol.h"

@implementation KVBViewModel


- (instancetype)init
{
    self = [super init];
    if (self) {
        _model = [KVBModel new];
        _model.viewModel = self;
    }
    return self;
}

#pragma mark - KVBViewProtocol

- (void)incrementCounter
{
    [self.model incrementCounter];
}

- (void)decrementCounter
{
    [self.model decrementCounter];
}

#pragma mark - KVBViewModelProtocol

-(void)counterHasChanged:(NSInteger)counter
{

}



@end
