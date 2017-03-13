//
//  QuestionViewController.m
//  modelingApp-ObC
//
//  Created by 平木宏空 on 2017/02/15.
//  Copyright © 2017年 平木宏空. All rights reserved.
//

#import "Question3ViewController.h"

@interface Question3ViewController ()

@end

@implementation Question3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data = [NSUserDefaults standardUserDefaults];
    [data removeObjectForKey:@"result3"];
    [data synchronize];
    
    questionArray = @[@"大学にしっかり通っていますか？",@"課題やテスト勉強は後回しにせず計画的にしていますか？",@"1,2年次でおとした単位は撮りましたか？",@"研究室配属に必要な単位は取れていますか？",@"研究室に馴染めていますか？",@"卒業に必要な単位をある程度とっていますか？",@"大学に止まらなくていい人間になっていますか？",@""];
    qNum = 1;
    count = 0;
    
    [self Question];
}

-(void)Question{
    Q.text = [NSString stringWithFormat:@"%d",qNum];
    question.text = questionArray[qNum-1];
    
    if(qNum == 8){
        [data setInteger:count forKey:@"result3"];
        [data synchronize];
        
        [self performSegueWithIdentifier:@"resultSegue" sender:nil];
    }
}

-(IBAction)tapYes{
    qNum = qNum + 1;
    count = count + 1;
    [self Question];
}

-(IBAction)tapNo{
    qNum = qNum + 1;
    count = count - 1;
    [self Question];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
