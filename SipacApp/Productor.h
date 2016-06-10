//
//  Productor.h
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Productor : NSObject

@property (nonatomic) NSNumber *keyProductor;
@property (nonatomic,copy) NSString *nombre;
@property (nonatomic,copy) NSString *departamento;
@property (nonatomic,copy) NSString *municipio;
@property (nonatomic,copy) NSString *comunidad;
@property (nonatomic,copy) NSString *documento;
@property (nonatomic,copy) NSString *estado;
@property (nonatomic,copy) NSString *tipoCosecha;
@property (nonatomic) NSNumber *dimension;
@property (nonatomic) NSNumber *latitud;
@property (nonatomic) NSNumber *longuitud;



+(instancetype) ProductorInitWithNombre:(NSNumber *) keyProductor
                nombreProductor:(NSString*) nombre
                   departamento:(NSString*) aDepartamento
                      municipio:(NSString*) aMunicipio
                      comunidad:(NSString*) aComunidad
                         cedula:(NSString*) aDocumento
                     estadoObra:(NSString *) aEstado
                tipoCosechaAgua:(NSString *) aTipoCosecha
                  dimensionObra:(NSNumber *) aDimension
                        latitud:(NSNumber *) aLatitud
                      longuitud:(NSNumber *) aLonguitud;

-(instancetype) initWithKeyProductor : (NSNumber *) keyProductor
              nombreProductor:(NSString*) nombre
           departamento:(NSString*) aDepartamento
                    municipio:(NSString*) aMunicipio
                    comunidad:(NSString*) aComunidad
                       cedula:(NSString*) aDocumento
                   estadoObra:(NSString *) aEstado
              tipoCosechaAgua:(NSString *) aTipoCosecha
                dimensionObra:(NSNumber *) aDimension
                      latitud:(NSNumber *) aLatitud
                    longuitud:(NSNumber *) aLonguitud;



-(instancetype) initWithDictionary: (NSDictionary *) aProductor;



@end
