//
//  NSLayoutConstraint+DoerFaFitLayoutConstraint.m
//  StoryBoardTest
//
//  Created by doerfa on 2019/11/26.
//  Copyright © 2019 杨俊杰. All rights reserved.
//

#import "NSLayoutConstraint+DoerFaFitLayoutConstraint.h"
#import <Objc/runtime.h>

#define kLayoutConstraintScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kDeviceScaleConstraintFit kLayoutConstraintScreenWidth / 375.0

@implementation NSLayoutConstraint (DoerFaFitLayoutConstraint)

- (void)setHorizontalConstant:(CGFloat)horizontalConstant {
    
    self.constant = horizontalConstant * kDeviceScaleConstraintFit;
    objc_setAssociatedObject(self, @selector(horizontalConstant), @(horizontalConstant), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)horizontalConstant {
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}

- (void)setVerticalConstant:(CGFloat)verticalConstant {
    
    self.constant = verticalConstant *kDeviceScaleConstraintFit;
    objc_setAssociatedObject(self, @selector(verticalConstant), @(verticalConstant), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)verticalConstant {
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}

- (void)setSignleConstant:(CGFloat)signleConstant{
    self.constant = signleConstant *kDeviceScaleConstraintFit;
    objc_setAssociatedObject(self, @selector(signleConstant), @(signleConstant), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)signleConstant{
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}

@end
