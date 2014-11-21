//
//  InputViewController.m
//  CalabashDemo
//
//  Created by Ruud Puts on 19/11/14.
//  Copyright (c) 2014 Philips. All rights reserved.
//

#import "InputViewController.h"
#import "ResultViewController.h"

@interface InputViewController ()

@property (nonatomic, weak) IBOutlet UITextField *textField;

@end

@implementation InputViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ((ResultViewController *)segue.destinationViewController).text = self.textField.text;
}

@end
