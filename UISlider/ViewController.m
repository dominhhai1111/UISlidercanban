//
//  ViewController.m
//  UISlider
//
//  Created by Do Minh Hai on 8/10/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
    
    __weak IBOutlet UISlider *slider2;
    
}
@property (weak, nonatomic) IBOutlet UISlider *slider1;
@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    _timer= [NSTimer scheduledTimerWithTimeInterval:0.05
                                             target:self
                                           selector:@selector(onTimer)
                                           userInfo:nil
                                            repeats:true ];
    slider2.transform = CGAffineTransformMakeRotation(M_PI_2);
    slider.tintColor= [UIColor redColor];
    slider.thumbTintColor= [UIColor blueColor];
    slider2.tintColor= [UIColor redColor];
    slider2.thumbTintColor= [UIColor blueColor];

}
-(void)onTimer {
    
    slider2.center= CGPointMake(273,230 );
    slider.value += 0.05;
    if (slider.value >=1.0) {
        slider.value = 0;
        //[_timer invalidate];
    }
    slider2.value += 0.05;
    if (slider2.value >=1.0) {
        slider2.value = 0;}
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
