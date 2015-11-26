//
//  BaseViewController.m
//  MusicDemo
//
//  Created by Mac on 15/11/22.
//  Copyright © 2015年 bing.liu. All rights reserved.
//
#define menu_btn_width  90

#import "BaseViewController.h"

@interface BaseViewController ()
{
    UIView          *_statuView;
    UIView          *_navigationView;
    UILabel         *lab_title;
    UIButton        *btn_left_action;
    UIButton        *btn_right_action;
}

//@property (nonatomic,strong) UIView     *statuView;
//@property (nonatomic,strong) UIView     *navigationView;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self prefersStatusBarHidden];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    [self initBaseView];
}

#pragma mark - UI
-(void)initBaseView
{
    _statuView = [[UIView alloc] initWithFrame:CGRectMake(0., 0.,Screen_Width, 20.)];
    [_statuView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_statuView];
    
    _navigationView = [[UIView alloc] initWithFrame:CGRectMake(0., CGRectGetMaxY(_statuView.frame), Screen_Width, 44.)];
    [_navigationView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_navigationView];
    
    lab_title = [[UILabel alloc] init];
    lab_title.center = CGPointMake(self.view.center.x, 22.);
    lab_title.bounds = CGRectMake(0., 0., 150., 44.);
    lab_title.text = @"标题";
    lab_title.textAlignment = NSTextAlignmentCenter;
    lab_title.lineBreakMode = NSLineBreakByTruncatingTail;
    [_navigationView addSubview:lab_title];
    
    btn_left_action = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_left_action.frame = CGRectMake(15., 0., menu_btn_width, 44.);
    [btn_left_action setTitle:@"左侧按钮" forState:UIControlStateNormal];
    [_navigationView addSubview:btn_left_action];
    
    btn_right_action = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_right_action.frame = CGRectMake(Screen_Width - 15. - menu_btn_width, 0., menu_btn_width, 44.);
    [btn_right_action setTitle:@"右侧按钮" forState:UIControlStateNormal];
    [_navigationView addSubview:btn_right_action];
}

-(void)setNav_LeftButtonHidden:(BOOL)hidden
{
    btn_left_action.hidden = hidden;
}

-(void)setNav_RightButtonHidden:(BOOL)hidden
{
    btn_right_action.hidden = hidden;
}

-(void)reLayoutSubViews
{
    //
}

#pragma mark - action
-(void)setTitle:(NSString *)title
{
    lab_title.text = title;
}

-(void)baseView_Nav_leftButton_Action
{
    NSLog(@"左侧");
}

-(void)baseView_Nav_rightButton_Action
{
    NSLog(@"右侧");
}

#pragma mark - memory
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
