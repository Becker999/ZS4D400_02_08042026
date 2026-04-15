@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCS02_CUSTOMERS'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CS02_CUSTOMERS
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CS02_CUSTOMERS
  association [1..1] to ZR_CS02_CUSTOMERS as _BaseEntity on $projection.CUSTOMERID = _BaseEntity.CUSTOMERID
{
  key Customerid,
  Salutation,
  LastName,
  FirstName,
  Street,
  City,
  Country,
  Postcode,
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
