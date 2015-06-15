//
//  RBIUserInitialsIcon.m
//  Identity
//
//  Created by Courtney Guo on 6/3/15.
//  Copyright (c) 2015 Robin Powered. All rights reserved.
//

#import "CKGUserInitialsIcon.h"

#import <HexColors/HexColor.h>

static NSCache *imageCache = nil;
static NSArray *colors = nil;

@implementation CKGUserInitialsIcon

+ (UIFont *)iconFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Helvetica Neue" size:size];
}

+ (UIImage *)imageNamed:(NSString *)name identifier:(NSString *)identifier fontSize:(CGFloat)fontSize imageSize:(CGSize)imageSize {
    if (identifier.length == 0) {
        return nil;
    }
    name = name.length > 0 ? name : identifier;
    NSArray *words = [name componentsSeparatedByString:@" "];
    NSString *initials = [(NSString *)words[0] substringToIndex:1];
    initials = initials.capitalizedString;
    if ([words count] > 1) {
        NSString *second_initial = [(NSString *)words[1] substringToIndex:1];
        initials = [initials stringByAppendingString:second_initial];
    }
    NSString *key = [NSString stringWithFormat:@"%@:%.1f:(%.1f,%.1f):%ld", initials, fontSize, imageSize.width, imageSize.height, (long)identifier.hash];
    
    UIImage *image = [self.imageCache objectForKey:key];
    if (!image) {
        CKGUserInitialsIcon *icon = [self iconWithCode:initials size:fontSize];
        icon.drawingBackgroundColor = [HXColor colorWithHexString:self.colors[identifier.hash%self.colors.count]];
        [icon addAttribute:NSForegroundColorAttributeName value: [UIColor whiteColor]];
        image = [icon imageWithSize:imageSize];
        [self.imageCache setObject:image forKey:key];
    }
    
    return image;
}

+ (NSCache *)imageCache {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        imageCache = [[NSCache alloc] init];
        imageCache.countLimit = 100;
    });
    
    return imageCache;
}

+ (NSArray *)colors {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        colors = @[@"e57373",
                   @"f06292",
                   @"ba68c8",
                   @"9575cd",
                   @"7986cb",
                   @"64b5f6",
                   @"4fc3f7",
                   @"4dd0e1",
                   @"4db6ac",
                   @"81c784",
                   @"aed581",
                   @"ff8a65",
                   @"d4e157",
                   @"ffd54f",
                   @"ffb74d",
                   @"a1887f",
                   @"90a4ae"];
    });
    
    return colors;
}

@end
