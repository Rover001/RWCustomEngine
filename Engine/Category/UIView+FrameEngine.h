//
//  UIView+FrameEngine.h
//  CustomAutoTagView_Example
//
//  Created by 曾云 on 2019/10/19.
//  Copyright © 2019 Rover001. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FrameEngine)

@property CGPoint origin;
@property CGSize size;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;


@property (readonly) CGPoint bottomLeft;
@property (readonly) CGPoint bottomRight;
@property (readonly) CGPoint topRight;

@property CGFloat height;
@property CGFloat width;

@property CGFloat top;
@property CGFloat left;

@property CGFloat bottom;
@property CGFloat right;

/* 🐱 根据中心点移动 offset 移动的距离 */
- (void)moveCenter:(CGPoint)offset;
/* 🐱 根据中心点缩放 scale 缩放大小 */
- (void)scaleFrame:(CGFloat)scale;

/* 🐱 根据新的大小 来计算大小 */
- (void)fitInSize:(CGSize)aSize;

/* 🐱 根据给定宽度  计算适应高度 */
- (void)fitInHeight:(CGFloat)width;

/* 🐱 根据给定高度  计算适应宽度 */
- (void)fitInWidth:(CGFloat)height;


@end

NS_ASSUME_NONNULL_END
