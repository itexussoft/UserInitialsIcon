//
//  UserInitialsIconTests.m
//  UserInitialsIconTests
//
//  Created by Courtney Guo on 06/15/2015.
//  Copyright (c) 2015 Courtney Guo. All rights reserved.
//

// https://github.com/Specta/Specta
#import "Expecta.h"
#import "Specta.h"
#define EXP_SHORTHAND
#import <UserInitialsIcon/CKGUserInitialsIcon.h>

SpecBegin(CKGUserInitialsIcon)

describe(@"User Initials Icon", ^{

    it(@"has the right size", ^{
        CGSize size = CGSizeMake(30, 30);
        UIImage *image = [CKGUserInitialsIcon imageNamed:@"Courtney Guo" identifier:@"314" fontSize:14 imageSize:size];
        expect(CGSizeEqualToSize(image.size, size)).to.equal(YES);
    });
    
    it(@"has the right size", ^{
        CGSize size = CGSizeMake(60, 60);
        UIImage *image = [CKGUserInitialsIcon imageNamed:@"Courtney Guo" identifier:@"123" fontSize:28 imageSize:size];
        expect(CGSizeEqualToSize(image.size, size)).to.equal(YES);
    });
    
});

SpecEnd
