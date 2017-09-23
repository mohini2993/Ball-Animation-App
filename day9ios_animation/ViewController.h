//
//  ViewController.h
//  day9ios_animation
//
//  Created by Student 01 on 14/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *ballImage;

- (IBAction)animateBall:(id)sender;

@property CGRect ballFrame;

@property CGRect screenFrame;


@end

