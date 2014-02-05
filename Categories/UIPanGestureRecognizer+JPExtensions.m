//
//  UIPanGestureRecognizer+JPExtensions.m
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import "UIPanGestureRecognizer+JPExtensions.h"

@implementation UIPanGestureRecognizer (JPExtensions)

- (JPPanGestureDirection) direction
{
    UIView *panningView = [self view];
    CGPoint translation = [self translationInView:[panningView superview]];
    
    if (self.way == JPPanGestureWayHorizontal) {
        
        return (translation.x > 0.0f) ? JPPanGestureDirectionRight: JPPanGestureDirectionLeft;
        
    }else{
        
        return (translation.y > 0.0f) ? JPPanGestureDirectionDown : JPPanGestureDirectionUp;
    }
}

- (JPPanGestureWay) way
{

    UIView *panningView = [self view];
    CGPoint translation = [self translationInView:[panningView superview]];
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (fabsf(translation.x) > fabsf(translation.y)){
        
        return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureWayVertical : JPPanGestureWayHorizontal;
                
    }else{
        
        return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureWayHorizontal : JPPanGestureWayVertical;
    }
}

@end
