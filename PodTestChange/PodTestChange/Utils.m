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
+ (void)makeButtonContainerLayout:(UIButton *)button withImagePosition:(UIImageOrientation)orientation withMargin:(CGFloat)space {
    //延时操作，为了让label和imageview获得frame ——Masonry在布局的时候，控件获得frame需要小小的延迟
    __block CGFloat margin = space;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CGRect imageRect = button.imageView.frame;
        CGRect labelRect = button.titleLabel.frame;
        CGRect buttonRect = button.frame;
        switch (orientation) {
            case UIImageOrientationDown: {
                if (margin > buttonRect.size.height - imageRect.size.height - labelRect.size.height) {
                    margin = buttonRect.size.height - imageRect.size.height - labelRect.size.height;
                }
                button.imageEdgeInsets = UIEdgeInsetsMake(labelRect.size.height/2+margin/2, -(imageRect.size.width/2+imageRect.origin.x-buttonRect.size.width/2), -labelRect.size.height/2-margin/2, imageRect.size.width/2+imageRect.origin.x-buttonRect.size.width/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(-imageRect.size.height/2-margin/2, -(labelRect.origin.x-buttonRect.size.width/2+labelRect.size.width/2), imageRect.size.height/2+margin/2, labelRect.origin.x-buttonRect.size.width/2+labelRect.size.width/2);
            }
                break;
            case UIImageOrientationLeft: {
                if (margin > buttonRect.size.width - imageRect.size.width - labelRect.size.width) {
                    margin = buttonRect.size.width - imageRect.size.width- labelRect.size.width;
                }
                button.imageEdgeInsets = UIEdgeInsetsMake(0, -margin/2, 0, margin/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(0, margin/2, 0, -margin/2);
            }
                break;
            case UIImageOrientationUp: {
                if (margin > buttonRect.size.height - imageRect.size.height - labelRect.size.height) {
                    margin = buttonRect.size.height - imageRect.size.height - labelRect.size.height;
                }
                button.imageEdgeInsets = UIEdgeInsetsMake(-labelRect.size.height/2-margin/2, -(imageRect.size.width/2+imageRect.origin.x-buttonRect.size.width/2), labelRect.size.height/2+margin/2, imageRect.size.width/2+imageRect.origin.x-buttonRect.size.width/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(imageRect.size.height/2+margin/2, -(labelRect.origin.x-buttonRect.size.width/2+labelRect.size.width/2), -imageRect.size.height/2-margin/2, labelRect.origin.x-buttonRect.size.width/2+labelRect.size.width/2);
            }
                break;
            case UIImageOrientationRight: {
                if (margin > buttonRect.size.width - imageRect.size.width - labelRect.size.width) {
                    margin = buttonRect.size.width - imageRect.size.width- labelRect.size.width;
                }
                button.imageEdgeInsets = UIEdgeInsetsMake(0, labelRect.size.width+margin/2, 0, -labelRect.size.width-margin/2);
                button.titleEdgeInsets = UIEdgeInsetsMake(0, -imageRect.size.width-margin/2, 0, imageRect.size.width+margin/2);
            }
                break;
            default:
                break;
        }
    });
}
@end
