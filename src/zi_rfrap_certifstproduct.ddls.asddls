@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado Status Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_rfrap_certifstProduct
  as select from zi_rfrap_certif_st
  association to parent zi_rfrap_certifproduct as _Certif
                                               on $projection.CertUuid = _Certif.CertUii
  association [1..1] to zi_rfrap_product as _Prod on $projection.Matnr = _Prod.Matnr
                                                 and _Prod.Language = $session.system_language
{
  key StateUuid,
      CertUuid,
      Matnr,
      _Prod.Description as Description,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      _Certif
}
