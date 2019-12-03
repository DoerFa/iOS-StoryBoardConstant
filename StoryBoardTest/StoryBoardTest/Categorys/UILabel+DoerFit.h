//
//  UIFont+DoerFit.h
//  StoryBoardTest
//
//  Created by doerfa on 2019/11/27.
//  Copyright © 2019 杨俊杰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (DoerFit)
/**字体大小*/
@property (nonatomic, assign)IBInspectable CGFloat fitSize;
/**是否按屏幕适配大小*/
@property (nonatomic, assign)IBInspectable BOOL isFit;

@end

NS_ASSUME_NONNULL_END
