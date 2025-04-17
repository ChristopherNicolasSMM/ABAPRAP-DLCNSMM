@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Status Certificados'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCCNSMM_CERTIFSTWITHPRODUCT as projection on ZICNSMM_CERTIFSTWITHPRODUCT
{
    key StateUuid,
    CertUuid,
    Matnr,
    Version,
    Status,
    StatusOld,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Certif: redirected to parent ZCCNSMM_CERTIFWITHPRODUCT,
    _Prod
}
