//
//  ViewController.m
//  day9ios_animation
//
//  Created by Student 01 on 14/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ballFrame=self.ballImage.frame;
    
  
// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)animateBall:(id)sender
{
    UIButton *localButton=sender;
    switch(localButton.tag)
    {
        case 101:
              [self animateNorthWest];
               break;
        case 102:
                [self animateNorth];
                  break;
        case 103:
               [self animateNorthEast];
                break;
        case 104:
               [self animateWest];
                break;
        case 105:
            [self animatecenter];
            break;
        case 106:
                [self animateEast];
                 break;
        case 107:
               [self animateSouthWest];
                break;
        case 108:
                [self animateSouth];
                 break;
     
        case 109:
                [self animateSouthEast];
                 break;
        case 110:
            [self animateZoomin];
            break;
            

        case 111:
            [self animateZoomOut];
            break;
            

        default:
                break;
    }
}
-(void)animateNorth
{
    if(self.ballImage.frame.origin.y>5)
    {
   [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y-100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
        
    }completion:^(BOOL finished){
    NSLog(@"Up animation finished");
    }];
    }
    else
    {
        NSLog(@"Up animation is not Finished");
    }

 }
-(void)animateSouth
{
    if(self.ballImage.frame.origin.y<500)
    {
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y+100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"Down animation finished");
    }];
    }
    else{
        NSLog(@"Down animation is not finished");
    }
    
}
-(void)animateWest
{
     if(self.ballImage.frame.origin.x>5)
     {
     
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"West animation finished");
    }];
     }
     else
     {
          NSLog(@"West animation is not finished");
     }
}
-(void)animateEast
{
    if(self.ballImage.frame.origin.x<270)
    {
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"East animation finished");
    }];
    }
    else{
        NSLog(@"East is not animation Finished");
    }
}
-(void)animateNorthWest
{
    if(self.ballImage.frame.origin.x<270 && self.ballImage.frame.origin.y>5)
    {
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y-100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"North West animation finished");
    }];
}
    else
    {
        NSLog(@"North West is not animation finished");

    }
}


-(void)animateNorthEast
{
    if(self.ballImage.frame.origin.x<300 && self.ballImage.frame.origin.y>5)
    {

    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y-100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"North East animation finished");
    }];
    }
    else
    {
        NSLog(@"North East is not animation finished");
    }
    
}
-(void)animateSouthWest
{
     if(self.ballImage.frame.origin.x>5 && self.ballImage.frame.origin.y<400)
     {
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x-100, self.ballImage.frame.origin.y+100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"South west animation finished");
    }];
     }
     else{
          NSLog(@"South west is not animation finished");
     }
    
}
-(void)animateSouthEast
{
    if(self.ballImage.frame.origin.x<330 && self.ballImage.frame.origin.y<400)
    {
        [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x+100, self.ballImage.frame.origin.y+100,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    }completion:^(BOOL finished){
        NSLog(@"south east animation finished");
    }];
  }
   else
   {
      NSLog(@"South east is not animation finished");
   }
}
-(void)animatecenter
{
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            
    //self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y,self.ballImage.frame.size.width, self.ballImage.frame.size.height);
    self.ballImage.frame=self.ballFrame;
    }completion:^(BOOL finished){
        NSLog(@"center animation finished");
 
    }];
}
-(void)animateZoomin
{
    if(self.ballImage.frame.size.width<=300 && self.ballImage.frame.size.height<=270)
    {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y,self.ballImage.frame.size.width+100, self.ballImage.frame.size.height+100);
        
    }completion:^(BOOL finished){
        NSLog(@"ZoomIn animation finished");
    }];
      }
         else
        {
             NSLog(@"ZoomIn is not animation finished");
        }
}
-(void)animateZoomOut
{
     if(self.ballImage.frame.size.width>=270&& self.ballImage.frame.size.height>=300)
     {
    [ UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.ballImage.frame=CGRectMake(self.ballImage.frame.origin.x, self.ballImage.frame.origin.y,self.
   ballImage.frame.size.width-100, self.ballImage.frame.size.height-100);
        
    }completion:^(BOOL finished){
        NSLog(@"ZoomOut animation finished");
        
    }];
}
    else
    {
        NSLog(@"ZoomOut is not animation finished");

    }
}






@end
