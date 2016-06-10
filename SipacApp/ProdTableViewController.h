//
//  ProdTableViewController.h
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProdTableViewController :UIViewController <UITableViewDelegate, UITableViewDataSource>
   @property (nonatomic,strong) NSMutableArray *productores;
   @property (nonatomic,strong) NSIndexPath *currentPath;
  // @property (weak, nonatomic) IBOutlet UITableView *tableVista;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;


@end
