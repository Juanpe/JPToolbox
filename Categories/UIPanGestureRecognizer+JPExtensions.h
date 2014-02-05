//
//  UIPanGestureRecognizer+JPExtensions.h
//  JPDynamicView
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, JPPanGestureDirection) {
    JPPanGestureDirectionLeft,
    JPPanGestureDirectionUp,
    JPPanGestureDirectionDown,
    JPPanGestureDirectionRight,
    JPPanGestureDirectionUnknow
};

typedef NS_ENUM(NSInteger, JPPanGestureWay) {
    JPPanGestureWayNone,
    JPPanGestureWayHorizontal,
    JPPanGestureWayVertical
};

@interface UIPanGestureRecognizer (JPExtensions)

- (JPPanGestureDirection) direction;
- (JPPanGestureWay) way;

@end
