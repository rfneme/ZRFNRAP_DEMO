@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Certificados'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zI_RFRAP_CERTIF
  as select from zrfrap_certif
{
  key cert_uii              as CertUii,
      matnr                 as Matnr,
      version               as Version,
      cert_status           as CertStatus,
      cert_ce               as CertCe,
      cert_gs               as CertGs,
      cert_fcc              as CertFcc,
      cert_iso              as CertIso,
      cert_tuev             as CertTuev,
      local_last_changed_at as LocalLastChangedAt
}
