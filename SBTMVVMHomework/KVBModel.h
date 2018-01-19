//
//  KVBModel.h
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KVBViewModel;
@protocol KVBViewModelProptocol;

@interface KVBModel : NSObject


@property(nonatomic, assign) NSInteger counter;
@property(nonatomic, weak) KVBViewModel<KVBViewModelProptocol> *viewModel;

- (void)incrementCounter;
- (void)decrementCounter;
@end


