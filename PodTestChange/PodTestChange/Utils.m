//
//  Utils.m
//  PodTestChange
//
//  Created by siqingchan_ajk on 2018/1/30.
//  Copyright © 2018年 anjuke. All rights reserved.
//

#import "Utils.h"
@implementation Utils

//设置button的内部图文布局
+ (void)makeButtonContainerLayout:(UIButton *)button withImagePosition:(UIImageOrientation)orientation withMargin:(CGFloat)margin {
    //延时操作，为了让label和imageview获得frame ——Masonry在布局的时候，控件获得frame需要小小的延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CGSize imageSize = button.imageView.frame.size;
        CGSize labelSize = button.titleLabel.frame.size;
        switch (orientation) {
            case UIImageOrientationDown: {
                button.imageEdgeInsets = UIEdgeInsetsMake(imageSize.height/2+margin/2, 0, -imageSize.height/2-margin/2, -labelSize.width);
                button.titleEdgeInsets = UIEdgeInsetsMake(-labelSize.height/2-margin/2, -imageSize.width, labelSize.height/2+margin/2, 0);
            }
                break;
            case UIImageOrientationLeft: {
                button.imageEdgeInsets = UIEdgeInsetsMake(0, -margin/2, 0, margin/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(0, margin/2, 0, -margin/2);
            }
                break;
            case UIImageOrientationUp: {
                button.imageEdgeInsets = UIEdgeInsetsMake(-imageSize.height/2-margin/2, 0, imageSize.height/2+margin/2, -labelSize.width);
                button.titleEdgeInsets = UIEdgeInsetsMake(labelSize.height/2+margin/2, -imageSize.width, -labelSize.height/2-margin/2, 0);
            }
                break;
            case UIImageOrientationRight: {
                button.imageEdgeInsets = UIEdgeInsetsMake(0, labelSize.width+margin/2, 0, -labelSize.width-margin/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width-margin/2, 0, imageSize.width+margin/2);
            }
                break;
            default:
                break;
        }
    });
}
@end
