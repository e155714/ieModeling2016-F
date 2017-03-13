//
//  GPAViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "GPAViewController.h"

@interface GPAViewController ()

@end

@implementation GPAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    sum = 0;
    count = 0;
    rslt = 0;
    
}

-(IBAction)tapKeisan{
    
    sum = 0;
    count = 0;
    rslt = 0;
    
    if(aTextField.text.length != 0){
        aNum = [aTextField.text intValue];
        count = count + aNum;
        sum = aNum * 4 + sum;
    }
    
    if(bTextField.text.length != 0){
        bNum = [bTextField.text intValue];
        count = count + bNum;
        sum = bNum * 3 + sum;
    }
    
    if(cTextField.text.length != 0){
        cNum = [cTextField.text intValue];
        count = count + cNum;
        sum = cNum * 2 + sum;
    }
    
    if(dTextField.text.length != 0){
        dNum = [dTextField.text intValue];
        count = count + dNum;
        sum = dNum * 1 + sum;
    }
    
    if(fTextField.text.length != 0){
        fNum = [fTextField.text intValue];
        count = count + fNum;
        
    }
    
    if (count > 0){
        rslt = sum/count;
    }
    
    resultLabel.text = [NSString stringWithFormat:@"%.2f",rslt];
    
}

@end
