//
//  CKGPerson.h
//  UserInitialsIcon
//
//  Created by Courtney Guo on 6/15/15.
//  Copyright (c) 2015 Courtney Guo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKGPerson : NSObject

@property NSString *name;
@property NSString *ID;

+(instancetype)initWithName:(NSString *)name ID:(NSString *)ID;

@end
