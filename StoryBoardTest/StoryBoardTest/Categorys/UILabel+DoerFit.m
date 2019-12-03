//
//  UIFont+DoerFit.m
//  StoryBoardTest
//
//  Created by doerfa on 2019/11/27.
//  Copyright © 2019 杨俊杰. All rights reserved.
//

#import "UILabel+DoerFit.h"
#import <Objc/Runtime.h>

#define kLayoutConstraintScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kDeviceScaleLabelFontFit kLayoutConstraintScreenWidth / 375.0
//#define kDefalutFont
@implementation UILabel (DoerFit)

- (void)setFitSize:(CGFloat)fitSize{
   
    if (fitSize) {
       self.font = self.isFit?[UIFont systemFontOfSize:fitSize*kDeviceScaleLabelFontFit]:[UIFont systemFontOfSize:fitSize];
    }

    objc_setAssociatedObject(self, @selector(fitSize), @(fitSize), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)fitSize{
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}

- (void)setIsFit:(BOOL)isFit{
    objc_setAssociatedObject(self, @selector(isFit), @(isFit), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isFit{
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}


@end
