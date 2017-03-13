//
//  GPAViewController.h
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GPAViewController : UIViewController{
    IBOutlet UITextField *aTextField;
    IBOutlet UITextField *bTextField;
    IBOutlet UITextField *cTextField;
    IBOutlet UITextField *dTextField;
    IBOutlet UITextField *fTextField;
    IBOutlet UILabel *resultLabel;
    
    float sum;
    float count;
    float rslt;
    
    int aNum;
    int bNum;
    int cNum;
    int dNum;
    int fNum;
    
}

-(IBAction)tapKeisan;
@end
