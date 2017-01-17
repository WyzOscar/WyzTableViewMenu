//
//  ViewController.m
//  AssociationMenuViewTest
//
//  Created by skytoup on 15/6/19.
//  Copyright (c) 2015年 skytoup. All rights reserved.
//

#import "ViewController.h"
#import "WyzTableViewMenu.h"
#import "BrandModel.h"
#import "CarSeriesModel.h"
#import "CarModels.h"

@interface ViewController () <WyzAssociationMenuViewDelegate>
@property (strong, nonatomic) WyzTableViewMenu *v;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _v = [WyzTableViewMenu new];
    _v.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testClick:(id)sender {
    [_v showAsDrawDownView:sender];
}

- (NSInteger)assciationMenuView:(WyzTableViewMenu*)asView countForClass:(NSInteger)idx {
    NSLog(@"choose %ld", idx);
    return 10;
}

- (BrandModel*)assciationMenuView:(WyzTableViewMenu*)asView titleForClass_1:(NSInteger)idx_1 {
    NSLog(@"title %ld", idx_1);
    return [NSString stringWithFormat:@"title %ld", idx_1];
}

- (CarSeriesModel*)assciationMenuView:(WyzTableViewMenu*)asView titleForClass_1:(NSInteger)idx_1 class_2:(NSInteger)idx_2 {
    NSLog(@"title %ld, %ld", idx_1, idx_2);
    return [NSString stringWithFormat:@"title %ld, %ld", idx_1, idx_2];
}

- (CarModels*)assciationMenuView:(WyzTableViewMenu*)asView titleForClass_1:(NSInteger)idx_1 class_2:(NSInteger)idx_2 class_3:(NSInteger)idx_3 {
    NSLog(@"title %ld, %ld, %ld", idx_1, idx_2, idx_3);
    return [NSString stringWithFormat:@"%ld,%ld,%ld", idx_1, idx_2, idx_3];
}

/**
 *  点击选择第一级菜单
 *
 *  @param asView <#asView description#>
 *  @param idx_1  第一级
 *
 *  @return 是否展示下一级
 */
- (BOOL)assciationMenuView:(WyzTableViewMenu*)asView idxChooseInClass1:(NSInteger)idx_1{
    //请求车系列表数据
    
    return YES;
}

-(BOOL)assciationMenuView:(WyzTableViewMenu *)asView idxChooseInClass1:(NSInteger)idx_1 class2:(NSInteger)idx_2{
    //请求车型数据
    return YES;
}

- (BOOL)assciationMenuView:(WyzTableViewMenu*)asView idxChooseInClass1:(NSInteger)idx_1 class2:(NSInteger)idx_2 class3:(NSInteger)idx_3{
    //保存最后选择数据
    return NO;
}
@end
