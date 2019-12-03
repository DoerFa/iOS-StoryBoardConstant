//
//  NSLayoutConstraint+DoerFaFitLayoutConstraint.h
//  StoryBoardTest
//
//  Created by doerfa on 2019/11/26.
//  Copyright © 2019 杨俊杰. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSLayoutConstraint (DoerFaFitLayoutConstraint)

/** 水平方向约束*/
@property (nonatomic, assign)IBInspectable CGFloat horizontalConstant;
/** 竖直方向约束 */
@property (nonatomic, assign)IBInspectable CGFloat verticalConstant;
/** 单纯边距*/
@property (nonatomic, assign)IBInspectable CGFloat signleConstant;

@end

NS_ASSUME_NONNULL_END
