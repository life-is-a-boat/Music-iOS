//
//  LBTabBarController.m
//  MusicDemo
//
//  Created by Mac on 15/11/22.
//  Copyright © 2015年 bing.liu. All rights reserved.
//

#import "LBTabBarController.h"

@implementation LBTabBarController
-(void)viewDidLoad
{
    [super viewDidLoad];
    //init code
    /*
     if(IOS_VERSION<7.0){
     CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
     UIGraphicsBeginImageContext(rect.size);
     CGContextRef context = UIGraphicsGetCurrentContext();
     CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
     CGContextFillRect(context, rect);
     UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
     UIGraphicsEndImageContext();
     self.tabBar.backgroundImage = image;
     
     }else{
     UIView *bgView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
     bgView.backgroundColor = [UIColor whiteColor];
     [self.tabBar insertSubview:bgView atIndex:0];
     self.tabBar.opaque = YES;
     }
     // Do any additional setup after loading the view.
     CALayer *line = [[CALayer alloc] init];
     line.frame = CGRectMake(0, 0, screenWidth, 1);
     line.backgroundColor = [[UIColor colorWithHexString:TABBGCOLOR] CGColor];
     [self.tabBar.layer addSublayer:line];
     */
    self.tabBar.layer.backgroundColor = [UIColor greenColor].CGColor;
    
}


-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    //init code
}
@end
