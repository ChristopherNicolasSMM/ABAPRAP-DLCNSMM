@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Status Certificate'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZICNSMM_CERTIF_ST
  as select from zcnsmm_certif_st
{
  key state_uuid            as StateUuid,
      cert_uuid             as CertUuid,
      matnr                 as Matnr,
      version               as Version,
      status                as Status,
      status_old            as StatusOld,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
