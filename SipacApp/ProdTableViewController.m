//
//  ProdTableViewController.m
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import "ProdTableViewController.h"
#import "Productor.h"
#import "ProdTableViewCell.h"
#import "ProdInfoViewController.h"
@interface ProdTableViewController ()
  -(void) loadWebApi;
@end

@implementation ProdTableViewController

@synthesize productores;



-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    productores =[[NSMutableArray alloc] init];
    [self loadWebApi];
    
   // int cantidad = [productores count];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [productores count];
}

-(void) loadWebApi {
    dispatch_queue_t cola = dispatch_queue_create("jsonload", 0);
    [self.activity startAnimating];
    dispatch_async(cola, ^{
       
        NSURL *urlwebapi = [[NSURL alloc] initWithString:@"http://sipac.economiafamiliar.gob.ni/webapi/api/v1/PointProductors"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:urlwebapi];
        NSURLResponse  *response = [[NSURLResponse alloc] init];
        
        NSError *error;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        
        if(data!=nil) {
            
            NSArray *jsonObjects = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
            if(jsonObjects!=nil){
                for (NSDictionary *dict in jsonObjects) {
                    [productores addObject:[[Productor alloc] initWithDictionary:dict]];
                }
            }
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
            [self.activity stopAnimating];
        });
        
        
    });
    
    
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ProdTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"cell01"];
    
    
    // Configure the cell...
    
    Productor *productor = [productores objectAtIndex:indexPath.row];
    
    cell.nombre.text = productor.nombre;
    cell.detalle.text = [NSString stringWithFormat:@"%@-%@",productor.municipio,productor.comunidad] ;
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *path= [self.tableView indexPathForSelectedRow];
    
    
    
    if([segue.identifier isEqualToString:@"detalle"]) {
       ProdInfoViewController *col = segue.destinationViewController;
       //col.selectedViewController = info;
      // col.currentProd = [self.productores objectAtIndex:path.row];
        
        //NSIndexPath index = [self.tableVista indexPathForSelectedRow];
       // avc.currentProd = [self.productores objectAtIndex:path.row];
        
    }
    
}


@end
