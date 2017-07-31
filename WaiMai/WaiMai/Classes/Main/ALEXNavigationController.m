//
//  ALEXNavigationController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

#import "ALEXNavigationController.h"

@interface ALEXNavigationController ()

@end

@implementation ALEXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 隐藏 导航控制器自带的导航条
    self.navigationBar.hidden = YES;
}











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
