//
//  resultViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "resultViewController.h"

@interface resultViewController ()

@end

@implementation resultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data = [NSUserDefaults standardUserDefaults];
    
    if ([data integerForKey:@"result"]){
        count = [data integerForKey:@"result"];
    }
    
    [self hantei];
    
}


-(void)hantei{
    if (count >= 5){
        resultlabel.text = @"3";
    }
    if (count >= -3 || count <= 3){
        resultlabel.text = @"4";
    }
    if (count <= -5){
        resultlabel.text = @"7";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end