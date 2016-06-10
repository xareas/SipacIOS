//
//  Productor.m
//  SipacApp
//
//  Created by Francisco Javier Areas Rios on 8/5/15.
//  Copyright (c) 2015 SolidSoftware. All rights reserved.
//

#import "Productor.h"

@implementation Productor

+(instancetype) ProductorInitWithNombre:(NSNumber *)keyProductor
                        nombreProductor:(NSString *)nombre
                           departamento:(NSString *)aDepartamento
                              municipio:(NSString *)aMunicipio
                              comunidad:(NSString *)aComunidad
                                 cedula:(NSString *)aDocumento
                             estadoObra:(NSString *)aEstado
                        tipoCosechaAgua:(NSString *)aTipoCosecha
                          dimensionObra:(NSNumber *)aDimension
                                latitud:(NSNumber *)aLatitud
                              longuitud:(NSNumber *)aLonguitud {

    return [[[self class] alloc] initWithKeyProductor:keyProductor
                                      nombreProductor:nombre
                                         departamento:aDepartamento
                                            municipio:aMunicipio
                                            comunidad:aComunidad
                                               cedula:aDocumento
                                           estadoObra:aEstado
                                      tipoCosechaAgua:aTipoCosecha
                                        dimensionObra:aDimension
                                              latitud:aLatitud
                                            longuitud:aLonguitud];
    
    

}


-(instancetype) initWithKeyProductor:(NSNumber *)keyProductor
                     nombreProductor:(NSString *)nombre
                        departamento:(NSString *)aDepartamento
                           municipio:(NSString *)aMunicipio
                           comunidad:(NSString *)aComunidad
                              cedula:(NSString *)aDocumento
                          estadoObra:(NSString *)aEstado
                     tipoCosechaAgua:(NSString *)aTipoCosecha
                       dimensionObra:(NSNumber *)aDimension
                             latitud:(NSNumber *)aLatitud
                           longuitud:(NSNumber *)aLonguitud {

    
    if(self = [super init] ) {
        _keyProductor = keyProductor;
        _nombre = nombre;
        _departamento = aDepartamento;
        _municipio = aMunicipio;
        _comunidad = aComunidad;
        _documento = aDocumento;
        _estado = aEstado;
        _tipoCosecha = aTipoCosecha;
        _dimension = aDimension;
        _latitud = aLatitud;
        _longuitud = aLonguitud;
        
    }
    return self;

}


-(instancetype) initWithDictionary:(NSDictionary *)aProductor {
    return [self initWithKeyProductor:[aProductor objectForKey:@"KeyProductor"]
                      nombreProductor:[aProductor objectForKey:@"Nombre"]
                         departamento:[aProductor objectForKey:@"Departamento"]
                            municipio:[aProductor objectForKey:@"Municipio"]
                            comunidad:[aProductor objectForKey:@"Comunidad"]
                               cedula:[aProductor objectForKey:@"Documento"]
                           estadoObra:[aProductor objectForKey:@"Estado"]
                      tipoCosechaAgua:[aProductor objectForKey:@"TipoCosecha"]
                        dimensionObra:[aProductor objectForKey:@"Dimension"]
                              latitud:[aProductor objectForKey:@"Latitud"]
                            longuitud:[aProductor objectForKey:@"Longuitud"]];

}

@end
