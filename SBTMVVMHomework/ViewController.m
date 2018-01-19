//
//  ViewController.m
//  SBTMVVMHomework
//
//  Created by Константин Богданов on 19.01.2018.
//  Copyright © 2018 Константин Богданов. All rights reserved.
//

#import "ViewController.h"
#import "KVBViewModel.h"


@interface ViewController ()

@property(nonatomic, strong) UIButton *incrementButton;
@property(nonatomic, strong) UIButton *decrementButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.counterLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, 50)];
    self.counterLabel.backgroundColor = UIColor.yellowColor;
    self.counterLabel.text = @"Push the button";
    
    self.viewModel = [KVBViewModel new];
    self.viewModel.kindOfView = self;
    
    self.incrementButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.incrementButton.frame = CGRectMake(0, 90, self.view.bounds.size.width, 50);
    self.incrementButton.backgroundColor = UIColor.grayColor;
    [self.incrementButton addTarget:self.viewModel action:@selector(incrementCounter) forControlEvents:UIControlEventTouchDown];
  
    self.decrementButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.decrementButton.frame = CGRectMake(0, 140, self.view.bounds.size.width, 50);
    self.decrementButton.backgroundColor = UIColor.greenColor;
    [self.decrementButton addTarget:self.viewModel action:@selector(decrementCounter) forControlEvents:UIControlEventTouchDown];

    
    
    [self.view addSubview:self.counterLabel];
    [self.view addSubview:self.incrementButton];
    [self.view addSubview:self.decrementButton];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateCounter:(NSInteger)counter
{
    self.counterLabel.text = [NSString stringWithFormat:@"X = %li", counter];
}

@end
