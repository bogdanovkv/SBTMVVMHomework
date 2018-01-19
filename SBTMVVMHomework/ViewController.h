//
//  ViewController.h
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KVBViewProtocol.h"


@class KVBViewModel;


@interface ViewController : UIViewController<KVBViewProtocol>

@property(nonatomic, strong) KVBViewModel *viewModel;
@property(nonatomic, strong) UILabel *counterLabel;

@end

