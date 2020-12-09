//
//  Sqlite3HelloWorld.m
//  SQLite3RequiredFramework
//
//  Created by Muis on 09/12/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import "Sqlite3HelloWorld.h"
#import <sqlite3.h>

/**
 The idea of this SQLite3 usage is to check if there is any requirement
 in Xcode project to link SQLite3 (system library) with ios application
 
 Later this will be used to test how to link sqlite3 in bazel
 */

@implementation Sqlite3HelloWorld

- (instancetype)init
{
    self = [super init];
    if (self) {
        sqlite3 *db;
        if (sqlite3_open("foo.db", &db) == SQLITE_OK) {
            NSLog(@"Open sqlite3 %@", db);
            sqlite3_close(db);
        } else {
            NSLog(@"Failed To Open sqlite3");
        }
    }
    return self;
}

@end
