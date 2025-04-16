@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCCNSMM_CERTIFWITHPRODUCT
  as projection on ZICNSMM_CERTIFWITHPRODUCT
{
  key CertUuid,
      Matnr,
      Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      LocalLastChangedAt,
      /* Associations */
      _Prod,
      _Stats: redirected to composition child ZCCNSMM_CERTIFSTWITHPRODUCT
}
