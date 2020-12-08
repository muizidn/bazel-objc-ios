//
//  ViewController.m
//  Foo
//
//  Created by Muis on 06/12/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import "ViewController.h"
//@import ModuleObjcFramework;
//@import SwiftFramework;
#import <NoModuleObjcFramework/NoModuleObjcFramework.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Foo viewDidLoad");
    //    NSLog(@"ModuleObjcHelloWorld %@", [[ModuleObjcHelloWorld alloc] init]);
    //    NSLog(@"SwiftHelloWorld %@", [[SwiftHelloWorld alloc] init]);
    NSLog(@"NoModuleObjcHelloWorld %@", [[NoModuleObjcHelloWorld alloc] init]);
    NSLog(@"NoModuleObjcBarQux %@", [[NoModuleObjcBarQux alloc] init]);
}


@end
