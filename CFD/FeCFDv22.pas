{****************************************************************************************}
{                                                                                        }
{                                    XML Data Binding                                    }
{                                                                                        }
{                                                                                        }
{       Generated from: http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv22.xsd            }
{                                                                                        }
{****************************************************************************************}

unit FeCFDv22;

interface

uses xmldom, XMLDoc, XMLIntf, FeCFDv2,FeCFD;

type

  IXMLComprobante_Emisor_RegimenFiscal = interface;
  IXMLComprobante_Emisor_RegimenFiscalList = interface;
  IFEXmlEmisorV22 = Interface;

  // Creamos el comprobante que hereda la v2.0
  IFEXMLComprobanteV22 = interface(IFEXMLComprobante)
  ['{8795E283-4283-4904-B6BD-D730D24AE80A}']
    { Property Accessors }
    function GetVersion: String;
    function GetSerie: String;
    function GetFolio: String;
    function GetFecha: String;
    function GetSello: String;
    {$ifdef V22}
     function GetNoAprobacion: Integer;
     function GetAnoAprobacion: Integer;
    {$endif}
    function GetFormaDePago: String;
    function GetNoCertificado: String;
    function GetCertificado: String;
    function GetCondicionesDePago: String;
    function GetSubTotal: String;
    function GetDescuento: String;
    function GetMotivoDescuento: String;
    function GetTipoCambio: String;
    function GetMoneda: String;
    function GetTotal: String;
    function GetTipoDeComprobante: String;
    function GetMetodoDePago: String;
    function GetLugarExpedicion: String;
    function GetNumCtaPago: String;
    function GetFolioFiscalOrig: String;
    function GetSerieFolioFiscalOrig: String;
    function GetFechaFolioFiscalOrig: String;
    function GetMontoFolioFiscalOrig: String;
    function GetEmisor: IFEXmlEmisorV22;
    function GetReceptor: IFEXmlReceptor;
    function GetConceptos:  IFEXmlConceptos;
    function GetImpuestos: IFEXmlImpuestos;
    function GetComplemento: IFEXmlComplemento;
    function GetAddenda: IFEXmlAddenda;
    procedure SetVersion(Value: String);
    procedure SetSerie(Value: String);
    procedure SetFolio(Value: String);
    procedure SetFecha(Value: String);
    procedure SetSello(Value: String);
    {$ifdef V22}
     procedure SetNoAprobacion(Value: Integer);
     procedure SetAnoAprobacion(Value: Integer);
    {$endif}
    procedure SetFormaDePago(Value: String);
    procedure SetNoCertificado(Value: String);
    procedure SetCertificado(Value: String);
    procedure SetCondicionesDePago(Value: String);
    procedure SetSubTotal(Value: String);
    procedure SetDescuento(Value: String);
    procedure SetMotivoDescuento(Value: String);
    procedure SetTipoCambio(Value: String);
    procedure SetMoneda(Value: String);
    procedure SetTotal(Value: String);
    procedure SetTipoDeComprobante(Value: String);
    procedure SetMetodoDePago(Value: String);
    procedure SetLugarExpedicion(Value: String);
    procedure SetNumCtaPago(Value: String);
    procedure SetFolioFiscalOrig(Value: String);
    procedure SetSerieFolioFiscalOrig(Value: String);
    procedure SetFechaFolioFiscalOrig(Value: String);
    procedure SetMontoFolioFiscalOrig(Value: String);
    { Methods & Properties }
    property Version: String read GetVersion write SetVersion;
    property Serie: String read GetSerie write SetSerie;
    property Folio: String read GetFolio write SetFolio;
    property Fecha: String read GetFecha write SetFecha;
    property Sello: String read GetSello write SetSello;
    {$ifdef V22}
      property NoAprobacion: Integer read GetNoAprobacion write SetNoAprobacion;
      property AnoAprobacion: Integer read GetAnoAprobacion write SetAnoAprobacion;
    {$endif}
    property FormaDePago: String read GetFormaDePago write SetFormaDePago;
    property NoCertificado: String read GetNoCertificado write SetNoCertificado;
    property Certificado: String read GetCertificado write SetCertificado;
    property CondicionesDePago: String read GetCondicionesDePago write SetCondicionesDePago;
    property SubTotal: String read GetSubTotal write SetSubTotal;
    property Descuento: String read GetDescuento write SetDescuento;
    property MotivoDescuento: String read GetMotivoDescuento write SetMotivoDescuento;
    property TipoCambio: String read GetTipoCambio write SetTipoCambio;
    property Moneda: String read GetMoneda write SetMoneda;
    property Total: String read GetTotal write SetTotal;
    property TipoDeComprobante: String read GetTipoDeComprobante write SetTipoDeComprobante;
    property MetodoDePago: String read GetMetodoDePago write SetMetodoDePago;
    property LugarExpedicion: String read GetLugarExpedicion write SetLugarExpedicion;
    property NumCtaPago: String read GetNumCtaPago write SetNumCtaPago;
    property FolioFiscalOrig: String read GetFolioFiscalOrig write SetFolioFiscalOrig;
    property SerieFolioFiscalOrig: String read GetSerieFolioFiscalOrig write SetSerieFolioFiscalOrig;
    property FechaFolioFiscalOrig: String read GetFechaFolioFiscalOrig write SetFechaFolioFiscalOrig;
    property MontoFolioFiscalOrig: String read GetMontoFolioFiscalOrig write SetMontoFolioFiscalOrig;
    property Emisor: IFEXmlEmisorV22 read GetEmisor;
    property Receptor: IFEXmlReceptor read GetReceptor;
    property Conceptos: IFEXmlConceptos read GetConceptos;
    property Impuestos: IFEXmlImpuestos read GetImpuestos;
    property Complemento: IFEXmlComplemento read GetComplemento;
    property Addenda: IFEXmlAddenda read GetAddenda;
  end;

{ IFEXmlEmisorV22 }
  IFEXmlEmisorV22 = interface(IFEXmlEmisorV2)
  ['{FCAB82C8-71A2-427D-97F4-82719291344E}']
    function GetRegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
    property RegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList read GetRegimenFiscal;
  end;

{ IXMLComprobante_Emisor_RegimenFiscal }
  IXMLComprobante_Emisor_RegimenFiscal = interface(IXMLNode)
    ['{A6293FB5-7AA2-42F0-8D41-13D8FC3EA731}']
    { Property Accessors }
    function GetRegimen: String;
    procedure SetRegimen(Value: String);
    { Methods & Properties }
    property Regimen: String read GetRegimen write SetRegimen;
  end;

{ IXMLComprobante_Emisor_RegimenFiscalList }
  IXMLComprobante_Emisor_RegimenFiscalList = interface(IXMLNodeCollection)
    ['{F0D8DAEC-18CC-40CC-AA35-43690BBCEFFA}']
    { Methods & Properties }
    function Add: IXMLComprobante_Emisor_RegimenFiscal;
    function Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;

    function GetItem(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
    property Items[Index: Integer]: IXMLComprobante_Emisor_RegimenFiscal read GetItem; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_Parte }
  TXMLIFEXMLComprobanteV22 = class;
  TXMLIFEXMLComprobanteEmisorV22 = class;
  TXMLT_UbicacionFiscal = class;
  TXMLT_Ubicacion = class;
  TXMLComprobante_Emisor_RegimenFiscal = class;
  TXMLComprobante_Emisor_RegimenFiscalList = class;

{ TXMLIFEXMLComprobante }

  TXMLIFEXMLComprobanteV22 = class(TXMLNode, IFEXMLComprobanteV22)
  protected
    { IFEXMLComprobanteV22 }
    function GetVersion: String;
    function GetSerie: String;
    function GetFolio: String;
    function GetFecha: String;
    function GetSello: String;
    {$ifdef V22}
     function GetNoAprobacion: Integer;
     function GetAnoAprobacion: Integer;
    {$endif}
    function GetFormaDePago: String;
    function GetNoCertificado: String;
    function GetCertificado: String;
    function GetCondicionesDePago: String;
    function GetSubTotal: String;
    function GetDescuento: String;
    function GetMotivoDescuento: String;
    function GetTipoCambio: String;
    function GetMoneda: String;
    function GetTotal: String;
    function GetTipoDeComprobante: String;
    function GetMetodoDePago: String;
    function GetLugarExpedicion: String;
    function GetNumCtaPago: String;
    function GetFolioFiscalOrig: String;
    function GetSerieFolioFiscalOrig: String;
    function GetFechaFolioFiscalOrig: String;
    function GetMontoFolioFiscalOrig: String;
    function GetEmisor: IFEXmlEmisorV22;
    function GetReceptor: IFEXmlReceptor;
    function GetConceptos:  IFEXmlConceptos;
    function GetImpuestos: IFEXmlImpuestos;
    function GetComplemento: IFEXmlComplemento;
    function GetAddenda: IFEXmlAddenda;
    procedure SetVersion(Value: String);
    procedure SetSerie(Value: String);
    procedure SetFolio(Value: String);
    procedure SetFecha(Value: String);
    procedure SetSello(Value: String);
    {$ifdef V22}
     procedure SetNoAprobacion(Value: Integer);
     procedure SetAnoAprobacion(Value: Integer);
    {$endif}
    procedure SetFormaDePago(Value: String);
    procedure SetNoCertificado(Value: String);
    procedure SetCertificado(Value: String);
    procedure SetCondicionesDePago(Value: String);
    procedure SetSubTotal(Value: String);
    procedure SetDescuento(Value: String);
    procedure SetMotivoDescuento(Value: String);
    procedure SetTipoCambio(Value: String);
    procedure SetMoneda(Value: String);
    procedure SetTotal(Value: String);
    procedure SetTipoDeComprobante(Value: String);
    procedure SetMetodoDePago(Value: String);
    procedure SetLugarExpedicion(Value: String);
    procedure SetNumCtaPago(Value: String);
    procedure SetFolioFiscalOrig(Value: String);
    procedure SetSerieFolioFiscalOrig(Value: String);
    procedure SetFechaFolioFiscalOrig(Value: String);
    procedure SetMontoFolioFiscalOrig(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIFEXMLComprobanteEmisorV22 }
  TXMLIFEXMLComprobanteEmisorV22 = class(TXMLNode, IFEXmlEmisorV22)
  private
    FRegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
  protected
    { IFEXmlEmisorV22 }
    function GetRfc: String;
    function GetNombre: String;
    function GetDomicilioFiscal: IFEXMLT_UbicacionFiscal;
    function GetExpedidoEn: IFEXmlT_Ubicacion;
    function GetRegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
    procedure SetRfc(Value: String);
    procedure SetNombre(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLT_UbicacionFiscal }

  TXMLT_UbicacionFiscal = class(TXMLNode, IFEXMLT_UbicacionFiscal)
  protected
    { IFEXMLT_UbicacionFiscal }
    function GetCalle: String;
    function GetNoExterior: String;
    function GetNoInterior: String;
    function GetColonia: String;
    function GetLocalidad: String;
    function GetReferencia: String;
    function GetMunicipio: String;
    function GetEstado: String;
    function GetPais: String;
    function GetCodigoPostal: String;
    procedure SetCalle(Value: String);
    procedure SetNoExterior(Value: String);
    procedure SetNoInterior(Value: String);
    procedure SetColonia(Value: String);
    procedure SetLocalidad(Value: String);
    procedure SetReferencia(Value: String);
    procedure SetMunicipio(Value: String);
    procedure SetEstado(Value: String);
    procedure SetPais(Value: String);
    procedure SetCodigoPostal(Value: String);
  end;

{ TXMLT_Ubicacion }

  TXMLT_Ubicacion = class(TXMLNode, IFEXmlT_Ubicacion)
  protected
    { IFEXmlT_Ubicacion }
    function GetCalle: String;
    function GetNoExterior: String;
    function GetNoInterior: String;
    function GetColonia: String;
    function GetLocalidad: String;
    function GetReferencia: String;
    function GetMunicipio: String;
    function GetEstado: String;
    function GetPais: String;
    function GetCodigoPostal: String;
    procedure SetCalle(Value: String);
    procedure SetNoExterior(Value: String);
    procedure SetNoInterior(Value: String);
    procedure SetColonia(Value: String);
    procedure SetLocalidad(Value: String);
    procedure SetReferencia(Value: String);
    procedure SetMunicipio(Value: String);
    procedure SetEstado(Value: String);
    procedure SetPais(Value: String);
    procedure SetCodigoPostal(Value: String);
  end;

{ TXMLComprobante_Emisor_RegimenFiscal }
  TXMLComprobante_Emisor_RegimenFiscal = class(TXMLNode, IXMLComprobante_Emisor_RegimenFiscal)
  protected
    { IXMLComprobante_Emisor_RegimenFiscal }
    function GetRegimen: String;
    procedure SetRegimen(Value: String);
  end;

{ TXMLComprobante_Emisor_RegimenFiscalList }
  TXMLComprobante_Emisor_RegimenFiscalList = class(TXMLNodeCollection, IXMLComprobante_Emisor_RegimenFiscalList)
  protected
    { IXMLComprobante_Emisor_RegimenFiscalList }
    function Add: IXMLComprobante_Emisor_RegimenFiscal;
    function Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;

    function GetItem(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
  end;

function GetComprobanteV22(Doc: IXMLDocument): IFEXMLComprobanteV22;
function LoadComprobanteV22(const FileName: string): IFEXMLComprobanteV22;
function NewComprobanteV22: IFEXMLComprobanteV22;

const
  TargetNamespace = 'http://www.sat.gob.mx/cfd/2';

implementation

{ Global Functions }

function GetComprobanteV22(Doc: IXMLDocument): IFEXMLComprobanteV22;
begin
  Result := Doc.GetDocBinding('Comprobante', TXMLIFEXMLComprobanteV22, TargetNamespace) as IFEXMLComprobanteV22;
end;

function LoadComprobanteV22(const FileName: string): IFEXMLComprobanteV22;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Comprobante', TXMLIFEXMLComprobanteV22, TargetNamespace) as IFEXMLComprobanteV22;
end;

function NewComprobanteV22: IFEXMLComprobanteV22;
begin
  Result := NewXMLDocument.GetDocBinding('Comprobante', TXMLIFEXMLComprobanteV22, TargetNamespace) as IFEXMLComprobanteV22;
end;

{ TXMLIFEXMLComprobante }

procedure TXMLIFEXMLComprobanteV22.AfterConstruction;
begin
  RegisterChildNode('Emisor', TXMLIFEXMLComprobanteEmisorV22);
  RegisterChildNode('Receptor', TFEXmlReceptor);
  RegisterChildNode('Conceptos', TFEXmlConceptos);
  RegisterChildNode('Impuestos', TFEXmlImpuestos);
  RegisterChildNode('Complemento', TFEXmlComplemento);
  RegisterChildNode('Addenda', TFEXmlAddenda);
  inherited;
end;

function TXMLIFEXMLComprobanteV22.GetVersion: String;
begin
  Result := AttributeNodes['version'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetVersion(Value: String);
begin
  SetAttribute('version', Value);
end;

function TXMLIFEXMLComprobanteV22.GetSerie: String;
begin
  Result := AttributeNodes['serie'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetSerie(Value: String);
begin
  SetAttribute('serie', Value);
end;

function TXMLIFEXMLComprobanteV22.GetFolio: String;
begin
  Result := AttributeNodes['folio'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetFolio(Value: String);
begin
  SetAttribute('folio', Value);
end;

function TXMLIFEXMLComprobanteV22.GetFecha: String;
begin
  Result := AttributeNodes['fecha'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetFecha(Value: String);
begin
  SetAttribute('fecha', Value);
end;

function TXMLIFEXMLComprobanteV22.GetSello: String;
begin
  Result := AttributeNodes['sello'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetSello(Value: String);
begin
  SetAttribute('sello', Value);
end;
{$ifdef V22}
function TXMLIFEXMLComprobanteV22.GetNoAprobacion: Integer;
begin
  Result := AttributeNodes['noAprobacion'].NodeValue;
end;

procedure TXMLIFEXMLComprobanteV22.SetNoAprobacion(Value: Integer);
begin
  SetAttribute('noAprobacion', Value);
end;

function TXMLIFEXMLComprobanteV22.GetAnoAprobacion: Integer;
begin
  Result := AttributeNodes['anoAprobacion'].NodeValue;
end;

procedure TXMLIFEXMLComprobanteV22.SetAnoAprobacion(Value: Integer);
begin
  SetAttribute('anoAprobacion', Value);
end;
{$endif}

function TXMLIFEXMLComprobanteV22.GetFormaDePago: String;
begin
  Result := AttributeNodes['formaDePago'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetFormaDePago(Value: String);
begin
  SetAttribute('formaDePago', Value);
end;

function TXMLIFEXMLComprobanteV22.GetNoCertificado: String;
begin
  Result := AttributeNodes['noCertificado'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetNoCertificado(Value: String);
begin
  SetAttribute('noCertificado', Value);
end;

function TXMLIFEXMLComprobanteV22.GetCertificado: String;
begin
  Result := AttributeNodes['certificado'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetCertificado(Value: String);
begin
  SetAttribute('certificado', Value);
end;

function TXMLIFEXMLComprobanteV22.GetCondicionesDePago: String;
begin
  Result := AttributeNodes['condicionesDePago'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetCondicionesDePago(Value: String);
begin
  SetAttribute('condicionesDePago', Value);
end;

function TXMLIFEXMLComprobanteV22.GetSubTotal: String;
begin
  Result := AttributeNodes['subTotal'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetSubTotal(Value: String);
begin
  SetAttribute('subTotal', Value);
end;

function TXMLIFEXMLComprobanteV22.GetDescuento: String;
begin
  Result := AttributeNodes['descuento'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetDescuento(Value: String);
begin
  SetAttribute('descuento', Value);
end;

function TXMLIFEXMLComprobanteV22.GetMotivoDescuento: String;
begin
  Result := AttributeNodes['motivoDescuento'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetMotivoDescuento(Value: String);
begin
  SetAttribute('motivoDescuento', Value);
end;

function TXMLIFEXMLComprobanteV22.GetTipoCambio: String;
begin
  Result := AttributeNodes['TipoCambio'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetTipoCambio(Value: String);
begin
  SetAttribute('TipoCambio', Value);
end;

function TXMLIFEXMLComprobanteV22.GetMoneda: String;
begin
  Result := AttributeNodes['Moneda'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetMoneda(Value: String);
begin
  SetAttribute('Moneda', Value);
end;

function TXMLIFEXMLComprobanteV22.GetTotal: String;
begin
  Result := AttributeNodes['total'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetTotal(Value: String);
begin
  SetAttribute('total', Value);
end;

function TXMLIFEXMLComprobanteV22.GetTipoDeComprobante: String;
begin
  Result := AttributeNodes['tipoDeComprobante'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetTipoDeComprobante(Value: String);
begin
  SetAttribute('tipoDeComprobante', Value);
end;

function TXMLIFEXMLComprobanteV22.GetMetodoDePago: String;
begin
  Result := AttributeNodes['metodoDePago'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetMetodoDePago(Value: String);
begin
  SetAttribute('metodoDePago', Value);
end;

function TXMLIFEXMLComprobanteV22.GetLugarExpedicion: String;
begin
  Result := AttributeNodes['LugarExpedicion'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetLugarExpedicion(Value: String);
begin
  SetAttribute('LugarExpedicion', Value);
end;

function TXMLIFEXMLComprobanteV22.GetNumCtaPago: String;
begin
  Result := AttributeNodes['NumCtaPago'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetNumCtaPago(Value: String);
begin
  SetAttribute('NumCtaPago', Value);
end;

function TXMLIFEXMLComprobanteV22.GetFolioFiscalOrig: String;
begin
  Result := AttributeNodes['FolioFiscalOrig'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetFolioFiscalOrig(Value: String);
begin
  SetAttribute('FolioFiscalOrig', Value);
end;

function TXMLIFEXMLComprobanteV22.GetSerieFolioFiscalOrig: String;
begin
  Result := AttributeNodes['SerieFolioFiscalOrig'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetSerieFolioFiscalOrig(Value: String);
begin
  SetAttribute('SerieFolioFiscalOrig', Value);
end;

function TXMLIFEXMLComprobanteV22.GetFechaFolioFiscalOrig: String;
begin
  Result := AttributeNodes['FechaFolioFiscalOrig'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetFechaFolioFiscalOrig(Value: String);
begin
  SetAttribute('FechaFolioFiscalOrig', Value);
end;

function TXMLIFEXMLComprobanteV22.GetMontoFolioFiscalOrig: String;
begin
  Result := AttributeNodes['MontoFolioFiscalOrig'].Text;
end;

procedure TXMLIFEXMLComprobanteV22.SetMontoFolioFiscalOrig(Value: String);
begin
  SetAttribute('MontoFolioFiscalOrig', Value);
end;

function TXMLIFEXMLComprobanteV22.GetEmisor: IFEXmlEmisorV22;
begin
  Result := ChildNodes['Emisor'] as IFEXmlEmisorV22;
end;

function TXMLIFEXMLComprobanteV22.GetReceptor: IFEXmlReceptor;
begin
  Result := ChildNodes['Receptor'] as IFEXmlReceptor;
end;

function TXMLIFEXMLComprobanteV22.GetConceptos: IFEXmlConceptos;
begin
  Result := ChildNodes['Conceptos'] as IFEXmlConceptos;
end;

function TXMLIFEXMLComprobanteV22.GetImpuestos: IFEXmlImpuestos;
begin
  Result := ChildNodes['Impuestos'] as IFEXmlImpuestos;
end;

function TXMLIFEXMLComprobanteV22.GetComplemento: IFEXmlComplemento;
begin
  Result := ChildNodes['Complemento'] as IFEXmlComplemento;
end;

function TXMLIFEXMLComprobanteV22.GetAddenda: IFEXmlAddenda;
begin
  Result := ChildNodes['Addenda'] as IFEXmlAddenda;
end;

{ TXMLIFEXMLComprobanteEmisorV22 }

procedure TXMLIFEXMLComprobanteEmisorV22.AfterConstruction;
begin
  RegisterChildNode('DomicilioFiscal', TXMLT_UbicacionFiscal);
  RegisterChildNode('ExpedidoEn', TXMLT_Ubicacion);
  RegisterChildNode('RegimenFiscal', TXMLComprobante_Emisor_RegimenFiscal);
  FRegimenFiscal := CreateCollection(TXMLComprobante_Emisor_RegimenFiscalList,
                                     IXMLComprobante_Emisor_RegimenFiscal,
                                     'RegimenFiscal') as IXMLComprobante_Emisor_RegimenFiscalList;
  inherited;
end;

function TXMLIFEXMLComprobanteEmisorV22.GetRfc: String;
begin
  Result := AttributeNodes['rfc'].Text;
end;

procedure TXMLIFEXMLComprobanteEmisorV22.SetRfc(Value: String);
begin
  SetAttribute('rfc', Value);
end;

function TXMLIFEXMLComprobanteEmisorV22.GetNombre: String;
begin
  Result := AttributeNodes['nombre'].Text;
end;

procedure TXMLIFEXMLComprobanteEmisorV22.SetNombre(Value: String);
begin
  SetAttribute('nombre', Value);
end;

function TXMLIFEXMLComprobanteEmisorV22.GetDomicilioFiscal: IFEXMLT_UbicacionFiscal;
begin
  Result := ChildNodes['DomicilioFiscal'] as IFEXMLT_UbicacionFiscal;
end;

function TXMLIFEXMLComprobanteEmisorV22.GetExpedidoEn: IFEXmlT_Ubicacion;
begin
  Result := ChildNodes['ExpedidoEn'] as IFEXmlT_Ubicacion;
end;

function TXMLIFEXMLComprobanteEmisorV22.GetRegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
begin
  Result := FRegimenFiscal;
end;

{ TXMLT_UbicacionFiscal }

function TXMLT_UbicacionFiscal.GetCalle: String;
begin
  Result := AttributeNodes['calle'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetCalle(Value: String);
begin
  SetAttribute('calle', Value);
end;

function TXMLT_UbicacionFiscal.GetNoExterior: String;
begin
  Result := AttributeNodes['noExterior'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetNoExterior(Value: String);
begin
  SetAttribute('noExterior', Value);
end;

function TXMLT_UbicacionFiscal.GetNoInterior: String;
begin
  Result := AttributeNodes['noInterior'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetNoInterior(Value: String);
begin
  SetAttribute('noInterior', Value);
end;

function TXMLT_UbicacionFiscal.GetColonia: String;
begin
  Result := AttributeNodes['colonia'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetColonia(Value: String);
begin
  SetAttribute('colonia', Value);
end;

function TXMLT_UbicacionFiscal.GetLocalidad: String;
begin
  Result := AttributeNodes['localidad'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetLocalidad(Value: String);
begin
  SetAttribute('localidad', Value);
end;

function TXMLT_UbicacionFiscal.GetReferencia: String;
begin
  Result := AttributeNodes['referencia'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetReferencia(Value: String);
begin
  SetAttribute('referencia', Value);
end;

function TXMLT_UbicacionFiscal.GetMunicipio: String;
begin
  Result := AttributeNodes['municipio'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetMunicipio(Value: String);
begin
  SetAttribute('municipio', Value);
end;

function TXMLT_UbicacionFiscal.GetEstado: String;
begin
  Result := AttributeNodes['estado'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetEstado(Value: String);
begin
  SetAttribute('estado', Value);
end;

function TXMLT_UbicacionFiscal.GetPais: String;
begin
  Result := AttributeNodes['pais'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetPais(Value: String);
begin
  SetAttribute('pais', Value);
end;

function TXMLT_UbicacionFiscal.GetCodigoPostal: String;
begin
  Result := AttributeNodes['codigoPostal'].Text;
end;

procedure TXMLT_UbicacionFiscal.SetCodigoPostal(Value: String);
begin
  SetAttribute('codigoPostal', Value);
end;

{ TXMLT_Ubicacion }

function TXMLT_Ubicacion.GetCalle: String;
begin
  Result := AttributeNodes['calle'].Text;
end;

procedure TXMLT_Ubicacion.SetCalle(Value: String);
begin
  SetAttribute('calle', Value);
end;

function TXMLT_Ubicacion.GetNoExterior: String;
begin
  Result := AttributeNodes['noExterior'].Text;
end;

procedure TXMLT_Ubicacion.SetNoExterior(Value: String);
begin
  SetAttribute('noExterior', Value);
end;

function TXMLT_Ubicacion.GetNoInterior: String;
begin
  Result := AttributeNodes['noInterior'].Text;
end;

procedure TXMLT_Ubicacion.SetNoInterior(Value: String);
begin
  SetAttribute('noInterior', Value);
end;

function TXMLT_Ubicacion.GetColonia: String;
begin
  Result := AttributeNodes['colonia'].Text;
end;

procedure TXMLT_Ubicacion.SetColonia(Value: String);
begin
  SetAttribute('colonia', Value);
end;

function TXMLT_Ubicacion.GetLocalidad: String;
begin
  Result := AttributeNodes['localidad'].Text;
end;

procedure TXMLT_Ubicacion.SetLocalidad(Value: String);
begin
  SetAttribute('localidad', Value);
end;

function TXMLT_Ubicacion.GetReferencia: String;
begin
  Result := AttributeNodes['referencia'].Text;
end;

procedure TXMLT_Ubicacion.SetReferencia(Value: String);
begin
  SetAttribute('referencia', Value);
end;

function TXMLT_Ubicacion.GetMunicipio: String;
begin
  Result := AttributeNodes['municipio'].Text;
end;

procedure TXMLT_Ubicacion.SetMunicipio(Value: String);
begin
  SetAttribute('municipio', Value);
end;

function TXMLT_Ubicacion.GetEstado: String;
begin
  Result := AttributeNodes['estado'].Text;
end;

procedure TXMLT_Ubicacion.SetEstado(Value: String);
begin
  SetAttribute('estado', Value);
end;

function TXMLT_Ubicacion.GetPais: String;
begin
  Result := AttributeNodes['pais'].Text;
end;

procedure TXMLT_Ubicacion.SetPais(Value: String);
begin
  SetAttribute('pais', Value);
end;

function TXMLT_Ubicacion.GetCodigoPostal: String;
begin
  Result := AttributeNodes['codigoPostal'].Text;
end;

procedure TXMLT_Ubicacion.SetCodigoPostal(Value: String);
begin
  SetAttribute('codigoPostal', Value);
end;

{ TXMLComprobante_Emisor_RegimenFiscal }

function TXMLComprobante_Emisor_RegimenFiscal.GetRegimen: String;
begin
  Result := AttributeNodes['Regimen'].Text;
end;

procedure TXMLComprobante_Emisor_RegimenFiscal.SetRegimen(Value: String);
begin
  SetAttribute('Regimen', Value);
end;

{ TXMLComprobante_Emisor_RegimenFiscalList }

function TXMLComprobante_Emisor_RegimenFiscalList.Add: IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := AddItem(-1) as IXMLComprobante_Emisor_RegimenFiscal;
end;

function TXMLComprobante_Emisor_RegimenFiscalList.Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := AddItem(Index) as IXMLComprobante_Emisor_RegimenFiscal;
end;

function TXMLComprobante_Emisor_RegimenFiscalList.GetItem(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := List[Index] as IXMLComprobante_Emisor_RegimenFiscal;
end;

end.