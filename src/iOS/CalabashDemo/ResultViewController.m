//
//  ResultViewController.m
//  CalabashDemo
//
//  Created by Ruud Puts on 19/11/14.
//  Copyright (c) 2014 Philips. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.text;
}

@end
