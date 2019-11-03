//
//  UIView+FrameEngine.m
//  CustomAutoTagView_Example
//
//  Created by 曾云 on 2019/10/19.
//  Copyright © 2019 Rover001. All rights reserved.
//

#import "UIView+FrameEngine.h"


@implementation UIView (FrameEngine)

- (CGPoint) origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect newframe = self.frame;
    newframe.origin = origin;
    self.frame = newframe;
}

- (CGSize) size
{
    return self.frame.size;
}

- (void) setSize: (CGSize) size
{
    CGRect newframe = self.frame;
    newframe.size = size;
    self.frame = newframe;
}


- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}


- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}


- (CGPoint) bottomRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) bottomLeft
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) topRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}


- (CGFloat) height
{
    return self.frame.size.height;
}

- (void) setHeight: (CGFloat) height
{
    CGRect newframe = self.frame;
    newframe.size.height = height;
    self.frame = newframe;
}

- (CGFloat) width
{
    return self.frame.size.width;
}

- (void) setWidth: (CGFloat) width
{
    CGRect newframe = self.frame;
    newframe.size.width = width;
    self.frame = newframe;
}

- (CGFloat) top
{
    return self.frame.origin.y;
}

- (void) setTop: (CGFloat) top
{
    CGRect newframe = self.frame;
    newframe.origin.y = top;
    self.frame = newframe;
}

- (CGFloat) left
{
    return self.frame.origin.x;
}

- (void) setLeft: (CGFloat) left
{
    CGRect newframe = self.frame;
    newframe.origin.x = left;
    self.frame = newframe;
}

- (CGFloat) bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void) setBottom: (CGFloat) bottom
{
    CGRect newframe = self.frame;
    newframe.origin.y = bottom - self.frame.size.height;
    self.frame = newframe;
}

- (CGFloat) right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void) setRight: (CGFloat) right
{
    CGFloat delta = right - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}

// Move via offset
- (void) moveCenter: (CGPoint) offset
{
    CGPoint newcenter = self.center;
    newcenter.x += offset.x;
    newcenter.y += offset.y;
    self.center = newcenter;
}

// Scaling
- (void) scaleFrame: (CGFloat) scale
{
    CGRect newframe = self.frame;
    newframe.size.width *= scale;
    newframe.size.height *= scale;
    self.frame = newframe;
}

// Ensure that both dimensions fit within the given size by scaling down
- (void) fitInSize: (CGSize) aSize
{
    CGFloat scale;
    CGRect newframe = self.frame;
    
    if (newframe.size.height && (newframe.size.height > aSize.height))
    {
        scale = aSize.height / newframe.size.height;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    if (newframe.size.width && (newframe.size.width >= aSize.width))
    {
        scale = aSize.width / newframe.size.width;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    self.frame = newframe;
}


/* 🐱 根据给定宽度  计算适应高度 */
- (void)fitInHeight:(CGFloat)width {
    CGFloat scale;
    CGRect newframe = self.frame;
    scale = newframe.size.width/newframe.size.height;
    newframe.size.width = width;
    newframe.size.height = scale*width;
    self.frame = newframe;
}

/* 🐱 根据给定高度  计算适应宽度 */
- (void)fitInWidth:(CGFloat)height {
    CGFloat scale;
    CGRect newframe = self.frame;
    scale = newframe.size.height/newframe.size.width;
    newframe.size.height = height;
    newframe.size.width = height*scale;
    self.frame = newframe;
}


@end
