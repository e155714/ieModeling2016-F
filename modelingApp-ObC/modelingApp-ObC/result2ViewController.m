//
//  resultViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "result2ViewController.h"

@interface result2ViewController ()

@end

@implementation result2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data = [NSUserDefaults standardUserDefaults];
    
    if ([data integerForKey:@"result2"]){
        count = [data integerForKey:@"result2"];
    }
    
    [self hantei];
    
}


-(void)hantei{
    if (count >= 6){
        resultlabel.text = @"2";
    }
    if (count >= -0 || count <= 4){
        resultlabel.text = @"3";
    }
    if (count <= -2){
        resultlabel.text = @"6";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end