//
//  resultViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "result4ViewController.h"

@interface result4ViewController ()

@end

@implementation result4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data = [NSUserDefaults standardUserDefaults];
    
    if ([data integerForKey:@"result4"]){
        count = [data integerForKey:@"result4"];
    }
    
    [self hantei];
    
}


-(void)hantei{
    if (count >= 5){
        resultlabel.text = @"今年度は卒業できそう！";
    }
    if (count <= 4){
        resultlabel.text = @"今年度は卒業できないかも...";
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end