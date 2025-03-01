@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado Com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zi_rfrap_certifproduct
  as select from zI_RFRAP_CERTIF
  composition [1..*] of zi_rfrap_certifstProduct as _Stats
  association [1..1] to zi_rfrap_product as _Prod on $projection.Matnr = _Prod.Matnr
                                                 and _Prod.Language = $session.system_language
{
  key CertUii,
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
      'sap-icon://accounting-document-verification' as Icon,
      
      _Prod,
      _Stats
}
