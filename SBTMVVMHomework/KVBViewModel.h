//
//  KVBViewModel.h
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVBViewModelProptocol.h"


@class KVBModel;
@class ViewController;
@protocol KVBViewModelProptocol;
@protocol KVBViewProtocol;


@interface KVBViewModel : NSObject<KVBViewModelProptocol>


@property(nonatomic, strong) KVBModel *model;
@property(nonatomic, weak) ViewController<KVBViewProtocol> *kindOfView;


@end
