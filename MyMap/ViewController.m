//
//  ViewController.m
//  MyMap
//
//  Created by ycgwl on 2017/5/6.
//  Copyright © 2017年 lwj. All rights reserved.
//
#import "LWJLocation.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *latiTF;
@property (weak, nonatomic) IBOutlet UITextField *lonTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 121.365372,31.274786  121.344912,31.28468
    LWJLocation *beforeLocation
    = [[LWJLocation alloc] initWithLatitude:31.28468 andLongitude:121.344912];
    
    // 百度转化为GPS
    LWJLocation *afterLocation = [beforeLocation transformFromGDToGPS];
    NSLog(@"转化后:%f, %f", afterLocation.latitude, afterLocation.longitude);
}
- (IBAction)click:(id)sender {
}




@end
