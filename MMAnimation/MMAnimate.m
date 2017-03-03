//
//  MMAnimate.m
//  MMAnimationDemo
//
//  Created by yuchen on 2017/3/3.
//  Copyright © 2017年 yuchen. All rights reserved.
//

#import "MMAnimate.h"
//#include<stdlib.h>


@implementation MMAnimate
+(CATransition *)getAnimation:(NSInteger)intger{
    CATransition *animation =[CATransition animation];
    animation.duration = 0.7;
//    [animation setTimingFunction:<#(CAMediaTimingFunction * _Nullable)#>];
    
    switch (intger) {
        case 1:
            animation.type = kCATransitionFade;
            break;
        case 2:
            animation.type = kCATransitionPush;
            break;
        case 3:
            animation.type = kCATransitionReveal;
            break;
        case 4:
            animation.type = kCATransitionMoveIn;
            break;
        case 5:
            animation.type = @"cube";
            break;
        case 6:
            animation.type = @"suckEffect";
            break;
        case 7:
            animation.type = @"oglFlip";
            break;
        case 8:
            animation.type = @"rippleEffect";
            break;
        case 9:
            animation.type = @"pageCurl";
            break;
        case 10:
            animation.type = @"pageUnCurl";
            break;
        case 11:
            animation.type = @"cameraIrisHollowOpen";
            break;
        case 12:
            animation.type = @"cameraIrisHollowClose";
            break;
        default:
            break;
    }
    
//TODO: 在这里可以手动选择 0-4的动画效果  我默认选择0  下面注释掉的这个方法是随机获取一个
//    int i = (int)rand()%4;
    int i = 1;
    switch (i) {
            
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    return animation;
}


@end
