//
//  ViewController.m
//  DBapp
//
//  Created by Andres on 12/30/15.
//  Copyright (c) 2015 Andres. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property AppDelegate *appDelegate;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate = [[UIApplication sharedApplication] delegate];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
