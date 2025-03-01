@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zc_rfrap_certifproduct as projection on zi_rfrap_certifproduct
{
    key CertUii,
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
    _Stats: redirected to composition child zc_rfrap_certifstproduct
}
