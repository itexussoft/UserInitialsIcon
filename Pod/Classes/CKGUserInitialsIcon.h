//
//  RBIUserInitialsIcon.h
//  Identity
//
//  Created by Courtney Guo on 6/3/15.
//  Copyright (c) 2015 Robin Powered. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FontAwesomeKit/FAKIcon.h>


@interface CKGUserInitialsIcon : FAKIcon

/**
 *  Generates an image with the user's initials, color coded based on their identifier. Uses a NSCache with the key representing the user's initials and identifier.
 *
 *  @param name             The user's name.
 *  @param identifier       The user's identifier, currently passed in as the user's email.
 *  @param fontSize         Font size of the text in the image, currently passed in as 18.
 *  @param imageSize        Image size of the icon, currently passed in as 35x35.
 *
 *  @return The generated user initials icon.
 */

+ (UIImage *)imageNamed:(NSString *)name identifier:(NSString *)identifier fontSize:(CGFloat)fontSize imageSize:(CGSize)imageSize;

@end
