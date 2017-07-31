//
//  ALEXBaseController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

#import "ALEXBaseController.h"

@interface ALEXBaseController ()

@end

@implementation ALEXBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
}


- (void)setupUI {
    
    UINavigationBar *navBar = [[UINavigationBar alloc] init];
    
    [self.view addSubview:navBar];
    
    [navBar]
    
    
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
