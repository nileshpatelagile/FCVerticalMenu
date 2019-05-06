//
//  FCVerticalMenuItemCollectionViewCell.m
//  VerticalSideMenu
//
//  Created by Filippo Camillo on 16/10/14.
//  Copyright (c) 2014 Filippo Camillo. All rights reserved.
//

#import "FCVerticalMenuItemCollectionViewCell.h"
#import "FCVerticalMenuItem.h"

@interface FCVerticalMenuItemCollectionViewCell()
-(UIImage *)image:(UIImage *)img withColor:(UIColor *)color;
@end

@implementation FCVerticalMenuItemCollectionViewCell

//TODO: implement these properties
// UIColor *textShadowColor;
// UIColor *highlightedTextColor;
// UIColor *highlightedTextShadowColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        
        // [UIScreen mainScreen].bounds.size.width /2
        CGFloat screenWidth = self.frame.size.width;
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 64;
        CGFloat getHeight = screenHeight / 4;
        CGFloat imgWidth;
        CGFloat imgYPostion;
        
        // imgWidth = 100;
        
        
        if (screenWidth == 160)
        {// 117
            imgYPostion = 12; //20
            imgWidth = 77;
            lblTitleExtra = 2;
        }
        else if (screenWidth == 187.5)
        {// 137
            imgYPostion = 15;
            imgWidth = 90;
            lblTitleExtra = 2;
        }
        else if (screenWidth == 207)
        {// 157
            imgYPostion = 18; // 30
            imgWidth = 100;
            lblTitleExtra = 2;
        }
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.frame.size.width/2)-(imgWidth/2), imgYPostion, imgWidth, imgWidth)];
        //        _imageView.layer.borderColor = [UIColor redColor].CGColor;
        //        _imageView.layer.borderWidth = 2.0;
        [self addSubview:_imageView];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, _imageView.frame.size.height + _imageView.frame.origin.y +  lblTitleExtra, frame.size.width, 44)];
        _titleLabel.textColor = [UIColor colorWithRed:17/255.0 green:17/255.0 blue:17/255.0 alpha:1];
        _titleLabel.adjustsFontSizeToFitWidth = YES;
        _titleLabel.minimumFontSize = 0;
        //     _titleLabel.numberOfLines = 2;
        //        lblServiceName?.font = UIFont.appFont_Light_WithSize(18)
        //        lblServiceName?.textColor = APP_BLACK_COLOR
        
        [self addSubview:_titleLabel];
        // -10 > -20 up label -10 down label
        
        _leftsideLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 1, self.frame.size.height)];
        _leftsideLabel.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_leftsideLabel];
        _placeholderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.frame.size.height - 1, frame.size.width, 1)];
        _placeholderLabel.backgroundColor= [UIColor lightGrayColor];
        [self addSubview:_placeholderLabel];
        
        _shadowImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:_shadowImg];
        
        _viewBg = [[UIView alloc]initWithFrame:self.frame];
        [self addSubview:_viewBg];
        
        
        _viewBg.backgroundColor = [UIColor clearColor];
        _imageView.backgroundColor = [UIColor clearColor];
        _shadowImg.backgroundColor = [UIColor clearColor];
        //  _viewBg.backgroundColor = [UIColor whiteColor];
        
        //  _titleLabel.backgroundColor = [UIColor yellowColor];
        
        
        
    }
    return self;
}





- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    // _imageView.image = _theMenuItem.icon;
    
    
    
    
    
    
    
    //    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //
    //    CGContextSetLineWidth(ctx, _theMenuItem.borderWidth);
    //    CGRect newRect = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    if (self.highlighted) {
        
        //     _imageView.backgroundColor = [UIColor blueColor];
        
        //       _viewBg.backgroundColor = [UIColor blueColor];
        
        
        //        _viewBg.layer.borderColor = [UIColor redColor].CGColor;
        //        _viewBg.layer.borderWidth = 2.0;
        
        //     _shadowImg.image = [UIImage imageNamed:@"borderLine"];
        
        // Set the border width
        /* CGContextSetLineWidth(ctx, 3.0);
         // Set the border color to RED
         
         //        CGContextSetRGBStrokeColor(ctx, 0.0, 0.0, 255.0, 1.0);
         CGContextSetRGBStrokeColor(ctx, 135/255.0, 208/255.0, 234/255.0, 0.5);
         
         // Draw the border along the view edge
         CGContextStrokeRect(ctx, newRect);
         CGContextClosePath(ctx);*/
        
        //        CGContextSetShadow(ctx, newRect.size, 0.5);
        //        CGContextSetShadowWithColor(ctx, newRect.size, 0.7, [[UIColor redColor]CGColor]);
        //        CGContextSetFillColor(ctx, CGColorGetComponents([_theMenuItem.highlightedBackgroundColor CGColor]));
        //      //  CGContextSetStrokeColorWithColor(ctx, [_theMenuItem.borderColor CGColor]);
        //        CGContextFillRect(ctx, newRect);
        //        CGContextFillEllipseInRect(ctx, newRect);
    } else {
        
        _shadowImg.image = nil;
        _viewBg.layer.borderColor = [UIColor clearColor].CGColor;
        _viewBg.layer.borderWidth = 2.0;
        
        //        CGContextSetStrokeColorWithColor(ctx, [_theMenuItem.borderColor CGColor]);
        //        CGContextStrokeEllipseInRect (ctx, newRect);
    }
    
    
    
    //    if (_theMenuItem.icon) {
    //        [_placeholderLabel removeFromSuperview];
    //
    //        //UIColor *tintColor = _theMenuItem.imageTintColor;
    //        UIColor *tintColor = [UIColor clearColor];
    //
    //
    //
    //        if (self.highlighted) {
    ////            tintColor = _theMenuItem.highlightedImageTintColor;
    //            tintColor = [UIColor clearColor];
    //        }
    //
    //        if (tintColor)
    //            _imageView.image = [self image:_theMenuItem.icon withColor:tintColor];
    //        else
    //            _imageView.image = _theMenuItem.icon;
    //
    //    //    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    //
    //
    //    } else {
    //        UIColor *tintColor = _theMenuItem.imageTintColor;
    //
    //        if (self.highlighted)
    //          //  tintColor = _theMenuItem.highlightedImageTintColor;
    //           tintColor = [UIColor clearColor];
    //
    ////        CGContextRef ctx = UIGraphicsGetCurrentContext();
    ////        CGContextSetFillColorWithColor(ctx, [tintColor CGColor]);
    ////        CGContextFillEllipseInRect(ctx, CGRectMake(30, 30, rect.size.width-60, rect.size.height-80));
    ////        CGContextClosePath(ctx);
    //
    //    }
    
    /*  _titleLabel.backgroundColor = [UIColor clearColor];
     _titleLabel.textColor = _theMenuItem.textColor;
     _titleLabel.font = _theMenuItem.font;
     _titleLabel.textAlignment = _theMenuItem.textAlignment;
     _titleLabel.numberOfLines = 2;
     [_titleLabel setText:_theMenuItem.title];
     [_titleLabel sizeToFit];
     
     CGRect newFrame = _titleLabel.frame;
     newFrame = CGRectMake(newFrame.origin.x, newFrame.origin.y, rect.size.width, newFrame.size.height);
     _titleLabel.frame = newFrame; */
    
}

- (void)layoutSubviews
{
    self.titleLabel.textColor = [UIColor blackColor];
    self.backgroundColor = [UIColor clearColor];
}


- (void)configureForItem:(FCVerticalMenuItem*)menuItem
{
    [self setNeedsDisplay];
}

-(void)setTheMenuItem:(FCVerticalMenuItem *)theMenuItem
{
    
    _theMenuItem = theMenuItem;
    [self setNeedsDisplay];
    [self updateLabelValue];
}


-(void)updateLabelValue
{
    _titleLabel.textColor = _theMenuItem.textColor;
    _titleLabel.font = _theMenuItem.font;
    _titleLabel.textAlignment = _theMenuItem.textAlignment;
    _titleLabel.numberOfLines = 0;
    //    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, _imageView.frame.size.height + _imageView.frame.origin.y +  lblTitleExtra, frame.size.width, 44)];
    //    if ([_theMenuItem.title isEqualToString:@"Service Locations & Hours"])
    //    {
    //        _titleLabel.frame = CGRectMake(0, _imageView.frame.size.height + _imageView.frame.origin.y +  lblTitleExtra, self.frame.size.width, 44);
    //    }
    //    else
    //    {
    _titleLabel.frame = CGRectMake(0, _imageView.frame.size.height + _imageView.frame.origin.y +  lblTitleExtra, self.frame.size.width, 22);
    // }
    
    
    [_titleLabel setText:_theMenuItem.title];
    
    
    
    if ([_theMenuItem.title isEqualToString:@"My Account"])
    {
        _imageView.image = [UIImage imageNamed:@"3"];
    }
    else if ([_theMenuItem.title isEqualToString:@"My Orders"])
    {
        _imageView.image = [UIImage imageNamed:@"7"];
    }
    else if ([_theMenuItem.title isEqualToString:@"FAQ"])
    {
        _imageView.image = [UIImage imageNamed:@"4"];
    }
    else if ([_theMenuItem.title isEqualToString:@"Special Offers"])
    {
        _imageView.image = [UIImage imageNamed:@"2"];
    }
    else if ([_theMenuItem.title isEqualToString:@"Terms & Conditions"])
    {
        _imageView.image = [UIImage imageNamed:@"5"];
    }
    else if ([_theMenuItem.title isEqualToString:@"Privacy Policy"])
    {
        _imageView.image = [UIImage imageNamed:@"6"];
    }
    else if ([_theMenuItem.title isEqualToString:@"Contact Us"])
    {
        _imageView.image = [UIImage imageNamed:@"1"];
    }
    else if ([_theMenuItem.title isEqualToString:@"Coverage Hours"])
    {
        _imageView.image = [UIImage imageNamed:@"9"];
    }
    
    _imageView.contentMode = UIViewContentModeScaleToFill;
    
    
    
    
    
    
    
    // [_titleLabel sizeToFit];
}

-(void)setHighlighted:(BOOL)highlighted {
    
    
    [super setHighlighted:highlighted];
    [self setNeedsDisplay];
}


/**
 *  Create and return an image tinted with a color
 *
 *  @param img   the source image
 *  @param color the tint color
 *
 *  @return new UIImage
 */
/*-(UIImage *)image:(UIImage *)img withColor:(UIColor *)color {
 if (color) {
 
 UIGraphicsBeginImageContextWithOptions (img.size, NO, [[UIScreen mainScreen] scale]);
 
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGRect rect = CGRectMake(0, 0, img.size.width, img.size.height);
 
 //resolve CG/iOS coordinate mismatch
 CGContextScaleCTM(context, 1, -1);
 CGContextTranslateCTM(context, 0, -rect.size.height);
 
 //set the clipping area to the image
 CGContextClipToMask(context, rect, img.CGImage);
 
 //set the fill color
 CGContextSetFillColor(context, CGColorGetComponents(color.CGColor));
 CGContextFillRect(context, rect);
 
 //blend mode overlay
 CGContextSetBlendMode(context, kCGBlendModeOverlay);
 
 //draw the image
 CGContextDrawImage(context, rect, img.CGImage);
 
 UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
 UIGraphicsEndImageContext();
 return tintedImage;
 
 }
 
 return img;
 }*/


@end
