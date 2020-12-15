//
//  ViewController.m
//  Foo
//
//  Created by Muis on 06/12/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import "ViewController.h"
@import ModuleObjcFramework;
// @import SwiftFramework;
#import <NoModuleObjcFramework/NoModuleObjcFramework.h>
#import <SQLite3RequiredFramework/SQLite3RequiredFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:UIColor.redColor];
    
    
    NSLog(@"Foo viewDidLoad");
    
    NSLog(@"ModuleObjcHelloWorld %@", [[ModuleObjcHelloWorld alloc] init]);
    // NSLog(@"SwiftHelloWorld %@", [[SwiftHelloWorld alloc] init]);
    
    NSLog(@"NoModuleObjcHelloWorld %@", [[NoModuleObjcHelloWorld alloc] init]);
    NSLog(@"NoModuleObjcBarQux %@", [[NoModuleObjcBarQux alloc] init]);
    NSLog(@"SQLite3HelloWorld %@", [[Sqlite3HelloWorld alloc] init]);
}


@end
