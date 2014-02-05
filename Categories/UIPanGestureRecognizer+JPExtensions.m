//
//  UIPanGestureRecognizer+JPExtensions.m
//  JPDynamicView
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import "UIPanGestureRecognizer+JPExtensions.h"

@implementation UIPanGestureRecognizer (JPExtensions)

- (JPPanGestureDirection) direction
{
    CGPoint velocity = [self velocityInView:self.view.window];
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (self.way == JPPanGestureWayVertical) {
        if (velocity.y > 0) {
            
            return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureDirectionUp : JPPanGestureDirectionDown;
            
        }else {
            
            return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureDirectionDown : JPPanGestureDirectionUp;
        }
    }
    else {
        if (velocity.x > 0) {
            
            return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureDirectionLeft : JPPanGestureDirectionRight;
            
        }else {
            
            return (UIInterfaceOrientationIsLandscape(orientation)) ? JPPanGestureDirectionRight : JPPanGestureDirectionLeft;
        }
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
