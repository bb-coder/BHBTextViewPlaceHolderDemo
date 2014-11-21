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

-(void)layoutSubviews
{
    self.delegate = self;
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
        NSDictionary * dict = @{NSFontAttributeName:font,NSForegroundColorAttributeName:[UIColor grayColor]};
        [self.placeholder drawAtPoint:CGPointMake(5, 8) withAttributes:dict];
    }
}

/**
 *  uitextview delegate
 */
-(void)textViewDidChange:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
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
