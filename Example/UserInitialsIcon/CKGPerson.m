//
//  CKGPerson.m
//  UserInitialsIcon
//
//  Created by Courtney Guo on 6/15/15.
//  Copyright (c) 2015 Courtney Guo. All rights reserved.
//

#import "CKGPerson.h"

@implementation CKGPerson

+ (instancetype)initWithName:(NSString *)name ID:(NSString *)ID {
    CKGPerson *person = [[CKGPerson alloc] init];
    person.name = name;
    person.ID = ID;
    return person;
}

@end
