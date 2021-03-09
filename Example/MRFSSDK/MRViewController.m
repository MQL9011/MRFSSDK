//
//  MRViewController.m
//  MRFSSDK
//
//  Created by mccree on 03/09/2021.
//  Copyright (c) 2021 mccree. All rights reserved.
//

#import "MRViewController.h"
#import <MRFSSDK/MRFSSDK.h>
@interface MRViewController ()

@end

@implementation MRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [MRFSSDK sharedInstance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
