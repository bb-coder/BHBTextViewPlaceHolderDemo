//
//  BBTextView.m
//  textviewplaceholddemo
//
//  Created by bb_coder on 14-11-21.
//  Copyright (c) 2014年 bb_coder. All rights reserved.
//

#import "BBTextView.h"

@interface BBTextView()<UITextViewDelegate>
{
    BOOL _isHidden;
}
@end

@implementation BBTextView
@synthesize placeColor = _placeColor;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeEditing) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/**
 *  文字提醒set方法
 *
 */
-(void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    [self setNeedsDisplay];
}

/**
 *  设置提醒文字颜色
 *
 *  @return 返回颜色值
 */
- (UIColor *)placeColor
{
    if (!_placeColor)
        _placeColor = [UIColor grayColor];
    return _placeColor;
}
- (void)setPlaceColor:(UIColor *)placeColor
{
    _placeColor = placeColor;
    [self setNeedsDisplay];
}


/**
 *  画出文字提醒
 */
-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    if (!_isHidden) {
        UIFont * font;
        if ([self font]) {
            font = [self font];
        }
        else
        {
            font = [UIFont systemFontOfSize:12];
        }
        NSDictionary * dict = @{NSFontAttributeName:font,NSForegroundColorAttributeName:self.placeColor};
        [self.placeholder drawAtPoint:CGPointMake(5, 8) withAttributes:dict];
    }
}

/**
 *  uitextview changetext
 */
-(void)changeEditing
{
    if ([self.text isEqualToString:@""]) {
        _isHidden = NO;
        [self setNeedsDisplay];
    }
    else
    {
        _isHidden = YES;
        [self setNeedsDisplay];
    }
}

@end
