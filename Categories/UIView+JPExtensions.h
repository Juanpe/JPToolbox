//
//  UIView+JPExtensions.h
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JPExtensions)

- (CGPoint)origin;
- (CGSize)size;

- (void) setOrigin:(CGPoint)newOrigin;
- (void) setSize:(CGSize)newSize;

- (void) transformWithScaleX:(CGFloat)scaleX andScaleY:(CGFloat)scaleY;

@end
