//
//  UIView+JPExtensions.m
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIView+JPExtensions.h"

@implementation UIView (JPExtensions)

- (CGPoint)origin{
    return self.frame.origin;
}

- (CGSize)size{
    return self.frame.size;
}

- (void) setOrigin:(CGPoint)newOrigin{
    
    CGRect currentFrame = self.frame;
    currentFrame.origin = newOrigin;
    
    self.frame          = currentFrame;
}

- (void) setSize:(CGSize)newSize{
    
    CGRect currentFrame = self.frame;
    currentFrame.size   = newSize;
    
    self.frame          = currentFrame;
}

- (void) transformWithScaleX:(CGFloat)scaleX
                   andScaleY:(CGFloat)scaleY{
    
    self.transform = CGAffineTransformScale(CGAffineTransformIdentity, scaleX, scaleY);
}

@end
