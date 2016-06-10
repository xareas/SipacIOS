//
//  ProdInfoViewController.m
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import "ProdInfoViewController.h"
#import "Productor.h"
@interface ProdInfoViewController ()

@end

@implementation ProdInfoViewController
@synthesize currentProd;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblNombre.text = currentProd.nombre;
    self.lblDepartamento.text = currentProd.departamento;
    self.lblMunicipio.text = currentProd.municipio;
    self.lblComunidad.text = currentProd.comunidad;
    self.lblEstado.text = currentProd.estado;
    self.lblDimension.text = [currentProd.dimension stringValue];
    self.lblTipoCosecha.text = currentProd.tipoCosecha;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
