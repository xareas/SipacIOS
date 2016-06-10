//
//  ProdInfoViewController.h
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Productor;

@interface ProdInfoViewController : UIViewController
@property (nonatomic,strong) Productor *currentProd;
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblDepartamento;
@property (weak, nonatomic) IBOutlet UILabel *lblMunicipio;
@property (weak, nonatomic) IBOutlet UILabel *lblComunidad;
@property (weak, nonatomic) IBOutlet UILabel *lblTipoCosecha;
@property (weak, nonatomic) IBOutlet UILabel *lblDimension;
@property (weak, nonatomic) IBOutlet UILabel *lblEstado;


@end
