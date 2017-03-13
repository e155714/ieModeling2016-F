//
//  resultViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "result3ViewController.h"

@interface result3ViewController ()

@end

@implementation result3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data = [NSUserDefaults standardUserDefaults];
    
    if ([data integerForKey:@"result3"]){
        count = [data integerForKey:@"result3"];
    }
    
    [self hantei];
    
}


-(void)hantei{
    if (count >= 5){
        resultlabel.text = @"1";
    }
    if (count > 1|| count < 3){
        resultlabel.text = @"2";
    }
    if (count <= -1){
        resultlabel.text = @"5";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end