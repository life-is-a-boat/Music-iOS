//
//  BaseViewController.h
//  MusicDemo
//
//  Created by Mac on 15/11/22.
//  Copyright © 2015年 bing.liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController


-(void)setStatusHidden:(BOOL)hidden;
-(void)setNavigationViewHidden:(BOOL)hidden;


-(void)setNav_LeftButtonWithBtn:(UIView *)leftView;
-(void)setNav_RightButtonWithBtn:(UIView *)rightView;
-(void)setNav_LeftButtonHidden:(BOOL)hidden;
-(void)setNav_RightButtonHidden:(BOOL)hidden;
-(void)baseView_Nav_leftButton_Action;
-(void)baseView_Nav_rightButton_Action;
@end
