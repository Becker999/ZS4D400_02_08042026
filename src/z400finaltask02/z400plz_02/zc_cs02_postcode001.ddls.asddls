@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCS02_POSTCODE01'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CS02_POSTCODE001
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CS02_POSTCODE001
  association [1..1] to ZR_CS02_POSTCODE001 as _BaseEntity on $projection.POSTCODE = _BaseEntity.POSTCODE
{
  key Postcode,
  City,
  Country,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
