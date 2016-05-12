//
//  UIView+M13BadgeView.m
//  M13BadgeView
//
//  Created by CodeZero on 12/2/15.
//  Copyright © 2015 CodeZero. All rights reserved.
//

#import "UIView+M13BadgeView.h"
#import <objc/runtime.h>

@implementation UIView (M13BadgeView)

@dynamic badge;

- (void)setBadge:(M13BadgeView *)badge {
    objc_setAssociatedObject(self, @selector(badge), badge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (M13BadgeView *)badge {
    M13BadgeView *badge = objc_getAssociatedObject(self, @selector(badge));
    if (badge == nil) {
        badge = [[M13BadgeView alloc]initWithFrame:CGRectZero];
        badge.hidesWhenZero = YES;
        [self addSubview:badge];
        self.badge = badge;
    }
    
    return badge;
}

@end
