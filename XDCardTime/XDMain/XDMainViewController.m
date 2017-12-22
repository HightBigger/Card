//
//  XDMainViewController.m
//  XDCardTime
//
//  Created by chenyixing on 2017/12/22.
//  Copyright © 2017年 fiberhome. All rights reserved.
//

#import "XDMainViewController.h"

#define record

@interface XDMainViewController ()/**<UITableViewDelegate,UITableViewDataSource>*/

@property(nonatomic,strong)UITableView *listTableView;

@end

@implementation XDMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *recordBtn = [[UIButton alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-60)/2, SCREEN_HEIGHT-60-50, 60, 60)];
    [recordBtn setBackgroundColor:[UIColor blackColor]];
    recordBtn.layer.cornerRadius = recordBtn.frame.size.width/2;
    recordBtn.layer.masksToBounds = YES;
    [recordBtn addTarget:self action:@selector(didClickRecordBtn:) forControlEvents:UIControlEventTouchUpInside];
//    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didClickRecordBtn:)];
//    [recordBtn addGestureRecognizer:tapGestureRecognizer];
    
    // 长按录制
    UILongPressGestureRecognizer * longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressGestureRecognizerRecordBtn:)];
//    longPressGestureRecognizer.delegate = self;
    longPressGestureRecognizer.minimumPressDuration = 1.0;
    longPressGestureRecognizer.allowableMovement = 10.0f;
    [recordBtn addGestureRecognizer:longPressGestureRecognizer];
    
    [self.view addSubview:recordBtn];
}

- (void)didClickRecordBtn:(UIGestureRecognizer *)gestureRecognizer
{
    NSLog(@"UIControlEventTouchUpInside");
}

- (void)longPressGestureRecognizerRecordBtn:(UIGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
        case UIGestureRecognizerStateBegan:
        {
            NSLog(@"bigan>>>>>>>>longPressGestureRecognizerRecordBtn");
            break;
        }
        case UIGestureRecognizerStateCancelled:
        {
            NSLog(@"Cancell>>>>>>>>longPressGestureRecognizerRecordBtn");
            break;
        }
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateFailed:
        {
            NSLog(@"stop>>>>>>>>longPressGestureRecognizerRecordBtn");
            break;
        }
        default:
            break;
    }
    
    
}


@end
