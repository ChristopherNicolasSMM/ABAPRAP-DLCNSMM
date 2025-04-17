@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZICNSMM_CERTIFWITHPRODUCT
  as select from ZICNSMM_CERTIF
  composition [1..*] of ZICNSMM_CERTIFSTWITHPRODUCT as _Stats
  association [1..1] to ZICNSMM_PRODUCT as _Prod on $projection.Matnr = _Prod.Matnr
                                                and _Prod.Language = $session.system_language
{
  key CertUuid,
      Matnr,
      //_Prod[ Language = $session.system_language ].Description as Description,
      _Prod.Description as Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      'sap-icon://shield' as Icon,
      
      //Associations
      _Prod,
      _Stats
}
