//
//  ViewController.m
//  Foo
//
//  Created by Muis on 06/12/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import "ViewController.h"
@import ModuleObjcFramework;
@import SwiftFramework;
#import <NoModuleObjcFramework/NoModuleObjcHelloWorld.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"ModuleObjcHelloWorld %@", [[ModuleObjcHelloWorld alloc] init]);
    NSLog(@"SwiftHelloWorld %@", [[SwiftHelloWorld alloc] init]);
    NSLog(@"NoModuleObjcHelloWorld %@", [[NoModuleObjcHelloWorld alloc] init]);
}


@end