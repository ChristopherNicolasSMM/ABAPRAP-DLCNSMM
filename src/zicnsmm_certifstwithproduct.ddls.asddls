@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Status do Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZICNSMM_CERTIFSTWITHPRODUCT
  as select from ZICNSMM_CERTIF_ST
  association to parent ZICNSMM_CERTIFWITHPRODUCT as _Certif on $projection.CertUuid = _Certif.CertUuid
    association [1..1] to ZICNSMM_PRODUCT as _Prod on $projection.Matnr = _Prod.Matnr
                                                and _Prod.Language = $session.system_language
{
  key StateUuid,
      CertUuid,
      Matnr,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      _Prod,
      _Certif
}
