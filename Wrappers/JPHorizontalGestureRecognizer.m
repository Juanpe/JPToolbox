//
//  JPHorizontalGestureRecognizer.m
//  JPDynamicView
//
//  Created by Juan Pedro Catalán on 05/02/14.
//  Copyright (c) 2014 Juanpe Catalán. All rights reserved.
//

#import "JPHorizontalGestureRecognizer.h"

@implementation JPHorizontalGestureRecognizer

- (id) initWithTarget:(id)target action:(SEL)action{
    
    self = [super initWithTarget:target action:action];
    if (self) {
        self.delegate = self;
    }
    return self;
}

#pragma mark - UIGestureRecognizer Delegate Methods -

- (BOOL) gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)panGestureRecognizer {
    
    return (self.way == JPPanGestureWayHorizontal);
}

@end
