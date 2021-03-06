//
//  ALEXBaseController.m
//  WaiMai
//
//  Created by Alex Chen on 07/31/2017.
//  Copyright © 2017 Alex Inc. All rights reserved.
//

/// 基类
#import "ALEXBaseController.h"


@interface ALEXBaseController ()

@end

@implementation ALEXBaseController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // 创建 导航条
        UINavigationBar *navBar = [[UINavigationBar alloc] init];
        
        // 向导航条 添加navItem
        UINavigationItem *navItem = [[UINavigationItem alloc] init];
        
        // 把navItem设置到导航条上'建立它和导航条控件的关系'
        [navBar setItems:@[navItem]];
        
        // 为属性赋值
        _navBar = navBar;
        _navItem = navItem;
        
    }
    
    return self;
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupUI];
    
//    // 创建 导航条
//    UINavigationBar *navBar = [[UINavigationBar alloc] init];
    
    
    
    
    // 添加到 父控件
    [self.view addSubview:_navBar];
    
    // 设置 约束条件
    [_navBar mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.right.offset(0);        // 约束"left+right": 确认宽度与X坐标, 约束"top": 确认Y坐标
        make.height.offset(64);                  // 约束"height": 确认高度
    }];

    
    
//
//    // 向导航条 添加navItem
//    UINavigationItem *navItem = [[UINavigationItem alloc] init];
//    
//    // 把navItem设置到导航条上'建立它和导航条控件的关系'
//    [navBar setItems:@[navItem]];
//    
//    // 为属性赋值
//    _navBar = navBar;
//    _navItem = navItem;
    
}


- (void)setupUI {
    
}



// 处理 内存警告
- (void)didReceiveMemoryWarning {
    // 继承 父类
    [super didReceiveMemoryWarning];
    
    
    if (self.isViewLoaded && self.view.window == nil) {
        
        self.view = nil;
    }
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
