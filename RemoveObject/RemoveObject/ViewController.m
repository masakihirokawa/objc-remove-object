//
//  ViewController.m
//  RemoveObject
//
//  Created by Dolice on 2013/03/31.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSMutableArray *myArray;
  myArray = [NSMutableArray arrayWithObjects:
             @"Apple", @"Banana", @"Orange", nil];
  
  //順序付けされたセットを生成する
  NSMutableOrderedSet *orderedSet;
  orderedSet = [NSMutableOrderedSet orderedSetWithArray:myArray];
  
  //オブジェクトを指定して削除する
  NSLog(@"myArray: %@", myArray);
  [myArray removeObject:@"Apple"];
  NSLog(@"myArray: %@", myArray);
  
  NSLog(@"orderedSet: %@", orderedSet);
  [orderedSet removeObject:@"Apple"];
  NSLog(@"orderedSet: %@", orderedSet);
}

@end
