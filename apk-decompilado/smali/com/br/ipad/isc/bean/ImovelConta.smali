.class public Lcom/br/ipad/isc/bean/ImovelConta;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "ImovelConta.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/ImovelConta$ImovelContasTipos;,
        Lcom/br/ipad/isc/bean/ImovelConta$ImovelContas;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private altoConsumo:Ljava/lang/Integer;

.field private anoMesConta:Ljava/lang/Integer;

.field private baixoConsumo:Ljava/lang/Integer;

.field private cliente:Ljava/lang/Integer;

.field private codigoAgencia:Ljava/lang/String;

.field private codigoDebitoAutomatico:Ljava/lang/String;

.field private codigoPerfil:Ljava/lang/Integer;

.field private codigoRota:Ljava/lang/Integer;

.field private codigoTarifa:Ljava/lang/Integer;

.field private codigoTipoDocumento:Ljava/lang/Integer;

.field private consumoAguaMedidoHistoricoFaturamento:Ljava/lang/Integer;

.field private consumoAguaNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;

.field private consumoEstouro:Ljava/lang/Integer;

.field private consumoMaximo:Ljava/lang/Integer;

.field private consumoMedioEsgoto:Ljava/lang/Integer;

.field private consumoMedioLigacaoAgua:Ljava/lang/Integer;

.field private consumoMinAgua:Ljava/lang/Integer;

.field private consumoMinEsgoto:Ljava/lang/Integer;

.field private consumoMinimoFaturamentoLigAguaSit:Ljava/lang/Integer;

.field private consumoMinimoImovel:Ljava/lang/Integer;

.field private consumoMinimoPerfilTarifa:Ljava/lang/Integer;

.field private consumoPercentualAlternativoEsgoto:Ljava/lang/Integer;

.field private contaComunicado:Lcom/br/ipad/isc/bean/ContaComunicado;

.field private cpfCnpjCliente:Ljava/lang/String;

.field private dataCorte:Ljava/util/Date;

.field private dataEmissaoDocumento:Ljava/util/Date;

.field private dataInicioRelacao:Ljava/util/Date;

.field private dataLeituraAnterior:Ljava/util/Date;

.field private dataLigacaoAgua:Ljava/util/Date;

.field private dataLigacaoRestabelecimento:Ljava/util/Date;

.field private dataPrevistaProximoMes:Ljava/util/Date;

.field private dataValidadeConta:Ljava/util/Date;

.field private dataVencimento:Ljava/util/Date;

.field private dataVencimentoGuiaLixo:Ljava/util/Date;

.field private debitoTipoGuiaLixo:Ljava/lang/String;

.field private descricaoBanco:Ljava/lang/String;

.field private descricaoLogradouro:Ljava/lang/String;

.field private digitoVerificadorConta:Ljava/lang/Integer;

.field private endereco:Ljava/lang/String;

.field private enderecoAtendimento:Ljava/lang/String;

.field private enderecoEntrega:Ljava/lang/String;

.field private fatorMultEstouro:Ljava/math/BigDecimal;

.field private fatorMultMediaAltoConsumo:Ljava/math/BigDecimal;

.field private faturamentoSituacaoTipo:Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

.field private grupoFaturamento:Ljava/lang/Integer;

.field private icImpressaoGuiaLixo:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private idConsumoTarifaAnterior:Ljava/lang/Integer;

.field private idDocumentoNotificacaoDebito:Ljava/lang/Integer;

.field private idGuiaPagamentoLixo:Ljava/lang/Integer;

.field private idLocalidade:Ljava/lang/Integer;

.field private idLogradouro:Ljava/lang/Integer;

.field private idPerfilTarifa:Ljava/lang/Integer;

.field private idSetorComercial:Ljava/lang/Integer;

.field private indcAreaComum:Ljava/lang/Integer;

.field private indcCondicionarFaturamentoAConsumoLigacaoAgua:Ljava/lang/Integer;

.field private indcCondominio:Ljava/lang/Integer;

.field private indcConsumoReal:Ljava/lang/Integer;

.field private indcContinuaImpressao:Ljava/lang/Integer;

.field private indcEmissaoConta:Ljava/lang/Integer;

.field private indcFaturamentoAgua:Ljava/lang/Integer;

.field private indcFaturamentoEsgoto:Ljava/lang/Integer;

.field private indcImovelCalculado:Ljava/lang/Integer;

.field private indcImovelEnviado:Ljava/lang/Integer;

.field private indcImovelImpresso:Ljava/lang/Integer;

.field private indcNaoPermiteImpressao:Ljava/lang/Integer;

.field private indcRateioRealizado:Ljava/lang/Integer;

.field private indicadorAbastecimentoAgua:Ljava/lang/Integer;

.field private indicadorImovelRateioNegativo:Ljava/lang/Integer;

.field private indicadorImovelSazonal:Ljava/lang/Integer;

.field private indicadorMsgTarifaSocial:Ljava/lang/Integer;

.field private indicadorParalizarFaturamentoAgua:Ljava/lang/Integer;

.field private indicadorParalizarFaturamentoEsgoto:Ljava/lang/Integer;

.field private inscricao:Ljava/lang/String;

.field private ligacaoAguaSituacaoIndicadorLeituraReal:Ljava/lang/Short;

.field private localidade:Ljava/lang/String;

.field private lote:Ljava/lang/String;

.field private matriculaCondominio:Ljava/lang/Integer;

.field private mensagemConta1:Ljava/lang/String;

.field private mensagemConta2:Ljava/lang/String;

.field private mensagemConta3:Ljava/lang/String;

.field private mensagemConta4:Ljava/lang/String;

.field private mensagemConta5:Ljava/lang/String;

.field private mensagemContaAnormalidade1:Ljava/lang/String;

.field private mensagemContaAnormalidade2:Ljava/lang/String;

.field private mensagemContaAnormalidade3:Ljava/lang/String;

.field private nomeGerenciaRegional:Ljava/lang/String;

.field private nomeResponsavel:Ljava/lang/String;

.field private nomeUsuario:Ljava/lang/String;

.field private numeroCPFOuCNPJClienteConta:Ljava/lang/String;

.field private numeroCodigoBarraGuiaPagamento:Ljava/lang/String;

.field private numeroCodigoBarraNotificacaoDebito:Ljava/lang/String;

.field private numeroConta:Ljava/lang/Integer;

.field private numeroCoordenadaX:Ljava/math/BigDecimal;

.field private numeroCoordenadaY:Ljava/math/BigDecimal;

.field private numeroDiasCorte:Ljava/lang/Integer;

.field private numeroImovel:Ljava/lang/Integer;

.field private numeroQuadra:Ljava/lang/Integer;

.field private percentBaixoConsumo:Ljava/math/BigDecimal;

.field private percentCobrancaEsgoto:Ljava/math/BigDecimal;

.field private percentColetaEsgoto:Ljava/math/BigDecimal;

.field private percentualAlternativoEsgoto:Ljava/math/BigDecimal;

.field private posicao:Ljava/lang/Integer;

.field private posicaoImovelCondominio:Ljava/lang/Integer;

.field private posicaoOriginal:Ljava/lang/Integer;

.field private qntVezesImpressaoConta:Ljava/lang/Integer;

.field private sequencialRota:Ljava/lang/Integer;

.field private situacaoLigAgua:Ljava/lang/Integer;

.field private situacaoLigEsgoto:Ljava/lang/Integer;

.field private sublote:Ljava/lang/String;

.field private telefoneLocalidadeDDD:Ljava/lang/String;

.field private tipoCalculoTarifa:Ljava/lang/Integer;

.field private tipoPoco:Ljava/lang/Integer;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorGuiaPagamentoLixo:Ljava/math/BigDecimal;

.field private volumeEsgotoMedidoHistoricoFaturamento:Ljava/lang/Integer;

.field private volumeEsgotoNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x73

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FTST_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IMCT_NMGERENCIA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IMCT_DSLOCALIDADE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IMCT_NMCLIENTEUSUARIO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IMCT_DTVENCIMENTOCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IMCT_DTVALIDADECONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IMCT_NMINSCRICAO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IMCT_LOTE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IMCT_SUBLOTE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "IMCT_DSENDERECO"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IMCT_AMREFERENCIACONTA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "IMCT_DGVERIFICADORCONTA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CLIE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IMCT_NMCLIENTERESPONSAVEL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "IMCT_DSENDERECOENTREGA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LAST_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LEST_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "IMCT_DSBANCODEBAUTO"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "IMCT_CDAGENCIADEBAUTO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "IMCT_IDIMOVELCONDOMINIO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "IMCT_ICIMOVELCONDOMINIO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IPER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "IMCT_NNCONMEDIOAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "IMCT_ICFATURAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "IMCT_ICFATURESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "IMCT_ICEMISSAOCONTA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IMCT_NNCONSMINAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "IMCT_NNCONSMINESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "IMCT_PCCOLETAESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "IMCT_PCESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "POCO_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IMCT_CDTARIFA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "IMCT_NNCONSUMOREFEC"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "IMCT_NNCONSIMOREFAC"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "IMCT_NNCONSUMOREFBC"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "IMCT_NNVEZESMEDIAESTOURO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "IMCT_NNVEZESMEDIAALTOCONSUMO"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "IMCT_PCMEDIABAIXOCONSUMO"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "IMCT_NNCONSUMOMAXIMOEC"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "FTGR_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ROTA_CDROTA"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "CNTA_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "IMCT_IDTARIFATIPOCALCULO"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "IMCT_ENDERECOATENDIMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IMCT_NNFONEDDD"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "IMCT_NNSEQUENCIALROTA"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IMCT_DSMENSAGEMCONTA1"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IMCT_DSMENSAGEMCONTA2"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "IMCT_DSMENSAGEMCONTA3"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "IMCT_DSMENSAGEMCONTA4"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IMCT_DSMENSAGEMCONTA5"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IMCT_NNCONSUMOMINIMOVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "IMCT_IDDOCUMENTOCOB"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "IMCT_NNCODBARRASDOCCOB"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "IMCT_NNCPJCNPJCLIENTE"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "FTSH_NNCONSUMOAGUAMEDIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "FTSH_NNCONSUMOAGUANAOMEDIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "FTSH_NNVOLUMEESGOTOMEDIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "FTSH_NNVOLUMEESGOTONAOMEDIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "IMCT_DTLEITURAANTNMEDIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "IMCT_ICABASTECIMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "IMCT_ICIMOVELSAZONAL"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "IMCT_ICPARALISARAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "IMCT_ICPARALISARESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "IMCT_CDDEBAUTOMATICO"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "IMCT_NNCONSPCALTERNATIVO"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "IMCT_DTEMISSAODOCCOBRAN"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "IMCT_PCALTERNATIVOESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "IMCT_NNCONMEDIOESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "IMCT_ICONSUMOREALAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "IMCT_NNDIASCORTEAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "IMCT_DTCORTEAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "IMCT_ICRATEIONEGATIVO"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "IMCT_ICIMOVCALCULADO"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "IMCT_NNQUADRA"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "IMCT_ICIMOVIMPRESSO"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "IMCT_NNPOSICAOIMOVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "IMCT_ICIMOVENVIADO"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "IMCT_DSMENSCONTAANOR1"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "IMCT_DSMENSCONTAANOR2"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "IMCT_DSMENSCONTAANOR3"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "LOCA_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "STCM_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "IMCT_QTDIMPRESSAO"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "IMCT_ICNAOPERMITEIMPRESSAO"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "IMCT_DTLIGACAOAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "IMCT_DTLIGACAORESTABELECIMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "IMCT_ICAREACOMUM"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "IMCT_NNPOSICAOIMOVELCONDOMINIO"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "IMCT_ICRATEIOREALIZADO"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "IMCT_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "IMCT_NNCOORDENADAX"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "IMCT_NNCOORDENADAY"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "IMCT_ICCONTINUAIMPRESSAO"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "COMU_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "LAST_ICLEITURAREAL"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "IMCT_IDCONSUMOTARANTERIOR"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "IMCT_NNCONSUMOMINFATLIGAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "IMCT_DTPROXIMOMES"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "IMCT_ICCONDFATLIGAGUA"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "IMCT_CDTIPODOCUMENTO"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "IMCT_NNCPFCNPJCLIENTECONTA"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "IMCT_IDLOGRADOURO"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IMCT_DESCRICAOLOGRADOURO"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "IMCT_NNIMOVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "TRIPER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "IPER_NNCONSUMOMINIMO"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "GUIA_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "GUIA_CODIGOBARRA"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "GUIA_VALOR"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "GUIA_DATAVENCIMENTOLIXO"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "GUIA_DEBITOTIPO"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "GUIA_ICIMPRESSAOlIXO"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "IMCT_NNPOSICAOIMOVEL_ORIGINAL"

    aput-object v2, v0, v1

    .line 934
    sput-object v0, Lcom/br/ipad/isc/bean/ImovelConta;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->insertFromFile(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1103
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicao(Ljava/lang/Integer;)V

    .line 1104
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicaoOriginal(Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 1105
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdString(Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 1106
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeGerenciaRegional(Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 1107
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setLocalidade(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 1108
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeUsuario(Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 1110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataVencimento(Ljava/util/Date;)V

    const/4 p2, 0x6

    .line 1111
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataValidadeConta(Ljava/util/Date;)V

    const/4 p2, 0x7

    .line 1113
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setInscricao(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xa

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setLote(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x10

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setSublote(Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 1119
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setEndereco(Ljava/lang/String;)V

    const/16 p2, 0x9

    .line 1121
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setAnoMesConta(Ljava/lang/Integer;)V

    .line 1122
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDigitoVerificadorConta(Ljava/lang/Integer;)V

    const/16 p2, 0xb

    .line 1123
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCliente(Ljava/lang/Integer;)V

    const/16 p2, 0xc

    .line 1125
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeResponsavel(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setEnderecoEntrega(Ljava/lang/String;)V

    const/16 p2, 0xe

    .line 1128
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setSituacaoLigAgua(Ljava/lang/Integer;)V

    const/16 p2, 0xf

    .line 1129
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setSituacaoLigEsgoto(Ljava/lang/Integer;)V

    .line 1131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDescricaoBanco(Ljava/lang/String;)V

    const/16 p2, 0x11

    .line 1132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoAgencia(Ljava/lang/String;)V

    const/16 p2, 0x12

    .line 1134
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMatriculaCondominio(Ljava/lang/Integer;)V

    const/16 p2, 0x13

    .line 1135
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcCondominio(Ljava/lang/Integer;)V

    const/16 p2, 0x14

    .line 1136
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoPerfil(Ljava/lang/Integer;)V

    const/16 p2, 0x15

    .line 1137
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMedioLigacaoAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x16

    .line 1138
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x17

    .line 1139
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    const/16 p2, 0x18

    .line 1140
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcEmissaoConta(Ljava/lang/Integer;)V

    const/16 p2, 0x19

    .line 1141
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x1a

    .line 1142
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinEsgoto(Ljava/lang/Integer;)V

    const/16 p2, 0x1b

    .line 1143
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentColetaEsgoto(Ljava/math/BigDecimal;)V

    const/16 p2, 0x1c

    .line 1144
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentCobrancaEsgoto(Ljava/math/BigDecimal;)V

    const/16 p2, 0x1d

    .line 1145
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setTipoPoco(Ljava/lang/Integer;)V

    const/16 p2, 0x1e

    .line 1146
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoTarifa(Ljava/lang/Integer;)V

    const/16 p2, 0x1f

    .line 1147
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoEstouro(Ljava/lang/Integer;)V

    const/16 p2, 0x20

    .line 1148
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setAltoConsumo(Ljava/lang/Integer;)V

    const/16 p2, 0x21

    .line 1149
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setBaixoConsumo(Ljava/lang/Integer;)V

    const/16 p2, 0x22

    .line 1151
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setFatorMultEstouro(Ljava/math/BigDecimal;)V

    const/16 p2, 0x23

    .line 1152
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setFatorMultMediaAltoConsumo(Ljava/math/BigDecimal;)V

    const/16 p2, 0x24

    .line 1153
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentBaixoConsumo(Ljava/math/BigDecimal;)V

    const/16 p2, 0x25

    .line 1155
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMaximo(Ljava/lang/Integer;)V

    const/16 p2, 0x26

    .line 1156
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setGrupoFaturamento(Ljava/lang/Integer;)V

    const/16 p2, 0x27

    .line 1157
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoRota(Ljava/lang/Integer;)V

    const/16 p2, 0x28

    .line 1158
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroConta(Ljava/lang/Integer;)V

    const/16 p2, 0x29

    .line 1159
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setTipoCalculoTarifa(Ljava/lang/Integer;)V

    const/16 p2, 0x2a

    .line 1161
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setEnderecoAtendimento(Ljava/lang/String;)V

    const/16 p2, 0x2b

    .line 1162
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setTelefoneLocalidadeDDD(Ljava/lang/String;)V

    const/16 p2, 0x2c

    .line 1164
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setSequencialRota(Ljava/lang/Integer;)V

    const/16 p2, 0x2d

    .line 1166
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta1(Ljava/lang/String;)V

    const/16 p2, 0x2e

    .line 1167
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta2(Ljava/lang/String;)V

    const/16 p2, 0x2f

    .line 1168
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta3(Ljava/lang/String;)V

    const/16 p2, 0x30

    .line 1171
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta4(Ljava/lang/String;)V

    const/16 p2, 0x31

    .line 1172
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta5(Ljava/lang/String;)V

    const/16 p2, 0x32

    .line 1174
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoImovel(Ljava/lang/Integer;)V

    const/16 p2, 0x33

    .line 1175
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdDocumentoNotificacaoDebito(Ljava/lang/Integer;)V

    const/16 p2, 0x34

    .line 1177
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCodigoBarraNotificacaoDebito(Ljava/lang/String;)V

    const/16 p2, 0x35

    .line 1178
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCpfCnpjCliente(Ljava/lang/String;)V

    .line 1181
    new-instance p2, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    const/16 v0, 0x36

    .line 1182
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->setIdString(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setFaturamentoSituacaoTipo(Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;)V

    const/16 p2, 0x37

    .line 1186
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoAguaMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    const/16 p2, 0x38

    .line 1187
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoAguaNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    const/16 p2, 0x39

    .line 1188
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setVolumeEsgotoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    const/16 p2, 0x3a

    .line 1189
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setVolumeEsgotoNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    const/16 p2, 0x3b

    .line 1191
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLeituraAnterior(Ljava/util/Date;)V

    const/16 p2, 0x3c

    .line 1193
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorAbastecimentoAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x3d

    .line 1194
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorImovelSazonal(Ljava/lang/Integer;)V

    const/16 p2, 0x3e

    .line 1195
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x3f

    .line 1196
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoEsgoto(Ljava/lang/Integer;)V

    const/16 p2, 0x40

    .line 1198
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoDebitoAutomatico(Ljava/lang/String;)V

    const/16 p2, 0x41

    .line 1199
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentualAlternativoEsgoto(Ljava/math/BigDecimal;)V

    const/16 p2, 0x42

    .line 1200
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoPercentualAlternativoEsgoto(Ljava/lang/Integer;)V

    const/16 p2, 0x43

    .line 1202
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataEmissaoDocumento(Ljava/util/Date;)V

    const/16 p2, 0x44

    .line 1204
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMedioEsgoto(Ljava/lang/Integer;)V

    const/16 p2, 0x45

    .line 1205
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcConsumoReal(Ljava/lang/Integer;)V

    const/16 p2, 0x46

    .line 1206
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroDiasCorte(Ljava/lang/Integer;)V

    const/16 p2, 0x47

    .line 1208
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataCorte(Ljava/util/Date;)V

    const/16 p2, 0x48

    .line 1209
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorImovelRateioNegativo(Ljava/lang/Integer;)V

    const/16 p2, 0x49

    .line 1210
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroQuadra(Ljava/lang/Integer;)V

    const/16 p2, 0x4a

    .line 1211
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdLocalidade(Ljava/lang/Integer;)V

    const/16 p2, 0x4b

    .line 1212
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdSetorComercial(Ljava/lang/Integer;)V

    .line 1214
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 1215
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setUltimaAlteracao(Ljava/lang/String;)V

    const/16 p2, 0x4c

    .line 1217
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcAreaComum(Ljava/lang/Integer;)V

    const/16 p2, 0x4d

    .line 1220
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLigacaoAgua(Ljava/util/Date;)V

    const/16 p2, 0x4e

    .line 1221
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLigacaoRestabelecimento(Ljava/util/Date;)V

    .line 1224
    new-instance p2, Ljava/lang/Integer;

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1225
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    .line 1226
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    .line 1227
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    .line 1228
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    .line 1229
    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V

    .line 1231
    new-instance p2, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    const/16 v0, 0x4f

    .line 1233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/br/ipad/isc/bean/ContaComunicado;->setIdString(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setContaComunicado(Lcom/br/ipad/isc/bean/ContaComunicado;)V

    const/16 p2, 0x50

    .line 1236
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setLigacaoAguaSituacaoIndicadorLeituraReal(Ljava/lang/Short;)V

    const/16 p2, 0x51

    .line 1237
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdConsumoTarifaAnterior(Ljava/lang/Integer;)V

    const/16 p2, 0x52

    .line 1238
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoFaturamentoLigAguaSit(Ljava/lang/Integer;)V

    const/16 p2, 0x53

    .line 1239
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataPrevistaProximoMes(Ljava/util/Date;)V

    const/16 p2, 0x54

    .line 1240
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcCondicionarFaturamentoAConsumoLigacaoAgua(Ljava/lang/Integer;)V

    const/16 p2, 0x55

    .line 1241
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoTipoDocumento(Ljava/lang/Integer;)V

    const/16 p2, 0x56

    .line 1242
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCPFOuCNPJClienteConta(Ljava/lang/String;)V

    const/16 p2, 0x57

    .line 1243
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdLogradouro(Ljava/lang/Integer;)V

    const/16 p2, 0x58

    .line 1244
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDescricaoLogradouro(Ljava/lang/String;)V

    const/16 p2, 0x59

    .line 1245
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroImovel(Ljava/lang/Integer;)V

    const/16 p2, 0x5a

    .line 1246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdPerfilTarifa(Ljava/lang/Integer;)V

    const/16 p2, 0x5b

    .line 1247
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoPerfilTarifa(Ljava/lang/Integer;)V

    const/16 p2, 0x5c

    .line 1248
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdGuiaPagamentoLixo(Ljava/lang/Integer;)V

    const/16 p2, 0x5d

    .line 1249
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCodigoBarraGuiaPagamento(Ljava/lang/String;)V

    const/16 p2, 0x5e

    .line 1250
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->verificarNuloBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setValorGuiaPagamentoLixo(Ljava/math/BigDecimal;)V

    const/16 p2, 0x5f

    .line 1251
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataVencimentoGuiaLixo(Ljava/util/Date;)V

    const/16 p2, 0x60

    .line 1252
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/ImovelConta;->setDebitoTipoGuiaLixo(Ljava/lang/String;)V

    return-void
.end method

.method private setDataInicioRelacao(Ljava/util/Date;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataInicioRelacao:Ljava/util/Date;

    return-void
.end method

.method private setIndicadorMsgTarifaSocial(Ljava/lang/Integer;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorMsgTarifaSocial:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public ehUltimoImovelCondominio()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 1988
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1989
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v2

    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1955
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1957
    :cond_2
    check-cast p1, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1958
    iget-object v2, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 1959
    iget-object p1, p1, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    return v1

    .line 1961
    :cond_3
    iget-object p1, p1, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAltoConsumo()Ljava/lang/Integer;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->altoConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAnoMesConta()Ljava/lang/Integer;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->anoMesConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBaixoConsumo()Ljava/lang/Integer;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->baixoConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCliente()Ljava/lang/Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->cliente:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoAgencia()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoAgencia:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoDebitoAutomatico()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoDebitoAutomatico:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoDebitoAutomaticoFormatado()Ljava/lang/String;
    .locals 5

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    .line 918
    invoke-static {v1, v0}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 921
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodigoPerfil()Ljava/lang/Integer;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoPerfil:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoRota()Ljava/lang/Integer;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoRota:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoTarifa()Ljava/lang/Integer;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoTarifa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCodigoTipoDocumento()Ljava/lang/Integer;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoTipoDocumento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 977
    sget-object v0, Lcom/br/ipad/isc/bean/ImovelConta;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoAguaMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoAguaNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoAguaNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoEstouro()Ljava/lang/Integer;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoEstouro:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMaximo()Ljava/lang/Integer;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMaximo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMedioEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMedioEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMedioLigacaoAgua()Ljava/lang/Integer;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMedioLigacaoAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinAgua()Ljava/lang/Integer;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoFaturamentoLigAguaSit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinimoImovel()Ljava/lang/Integer;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoImovel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoPerfilTarifa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConsumoPercentualAlternativoEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoPercentualAlternativoEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->contaComunicado:Lcom/br/ipad/isc/bean/ContaComunicado;

    return-object v0
.end method

.method public getCpfCnpjCliente()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->cpfCnpjCliente:Ljava/lang/String;

    return-object v0
.end method

.method public getDataCorte()Ljava/util/Date;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataCorte:Ljava/util/Date;

    return-object v0
.end method

.method public getDataEmissaoDocumento()Ljava/util/Date;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataEmissaoDocumento:Ljava/util/Date;

    return-object v0
.end method

.method public getDataInicioRelacao()Ljava/util/Date;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataInicioRelacao:Ljava/util/Date;

    return-object v0
.end method

.method public getDataLeituraAnterior()Ljava/util/Date;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLeituraAnterior:Ljava/util/Date;

    return-object v0
.end method

.method public getDataLigacaoAgua()Ljava/util/Date;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoAgua:Ljava/util/Date;

    return-object v0
.end method

.method public getDataLigacaoRestabelecimento()Ljava/util/Date;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoRestabelecimento:Ljava/util/Date;

    return-object v0
.end method

.method public getDataPrevistaProximoMes()Ljava/util/Date;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataPrevistaProximoMes:Ljava/util/Date;

    return-object v0
.end method

.method public getDataValidadeConta()Ljava/util/Date;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataValidadeConta:Ljava/util/Date;

    return-object v0
.end method

.method public getDataVencimento()Ljava/util/Date;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataVencimento:Ljava/util/Date;

    return-object v0
.end method

.method public getDataVencimentoGuiaLixo()Ljava/util/Date;
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataVencimentoGuiaLixo:Ljava/util/Date;

    return-object v0
.end method

.method public getDebitoTipoGuiaLixo()Ljava/lang/String;
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->debitoTipoGuiaLixo:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoBanco()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->descricaoBanco:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoLogradouro()Ljava/lang/String;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->descricaoLogradouro:Ljava/lang/String;

    return-object v0
.end method

.method public getDigitoVerificadorConta()Ljava/lang/Integer;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->digitoVerificadorConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndereco()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->endereco:Ljava/lang/String;

    return-object v0
.end method

.method public getEnderecoAtendimento()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->enderecoAtendimento:Ljava/lang/String;

    return-object v0
.end method

.method public getEnderecoEntrega()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->enderecoEntrega:Ljava/lang/String;

    return-object v0
.end method

.method public getEnderecoResumido()Ljava/lang/String;
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->endereco:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    const-string v1, ""

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->endereco:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PELOTAS RS"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getFatorMultEstouro()Ljava/math/BigDecimal;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->fatorMultEstouro:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFatorMultMediaAltoConsumo()Ljava/math/BigDecimal;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->fatorMultMediaAltoConsumo:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->faturamentoSituacaoTipo:Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    return-object v0
.end method

.method public getGrupoFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->grupoFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcImpressaoGuiaLixo()Ljava/lang/Integer;
    .locals 1

    .line 2036
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->icImpressaoGuiaLixo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoTarifaAnterior()Ljava/lang/Integer;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idConsumoTarifaAnterior:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idDocumentoNotificacaoDebito:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdGuiaPagamentoLixo()Ljava/lang/Integer;
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idGuiaPagamentoLixo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLocalidade()Ljava/lang/Integer;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idLocalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLogradouro()Ljava/lang/Integer;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idLogradouro:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdPerfilTarifa()Ljava/lang/Integer;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idPerfilTarifa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdSetorComercial()Ljava/lang/Integer;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idSetorComercial:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcAreaComum()Ljava/lang/Integer;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcAreaComum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcCondicionarFaturamentoAConsumoLigacaoAgua()Ljava/lang/Integer;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcCondicionarFaturamentoAConsumoLigacaoAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcCondominio()Ljava/lang/Integer;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcConsumoReal()Ljava/lang/Integer;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcConsumoReal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcContinuaImpressao()Ljava/lang/Integer;
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcContinuaImpressao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcEmissaoConta()Ljava/lang/Integer;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcEmissaoConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcFaturamentoAgua()Ljava/lang/Integer;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcFaturamentoAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcFaturamentoEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcFaturamentoEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcImovelCalculado()Ljava/lang/Integer;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelCalculado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcImovelEnviado()Ljava/lang/Integer;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelEnviado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcImovelImpresso()Ljava/lang/Integer;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelImpresso:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcNaoPermiteImpressao()Ljava/lang/Integer;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcNaoPermiteImpressao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcRateioRealizado()Ljava/lang/Integer;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcRateioRealizado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorAbastecimentoAgua()Ljava/lang/Integer;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorAbastecimentoAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorImovelRateioNegativo()Ljava/lang/Integer;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorImovelRateioNegativo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorImovelSazonal()Ljava/lang/Integer;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorImovelSazonal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorMsgTarifaSocial()Ljava/lang/Integer;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorMsgTarifaSocial:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorParalizarFaturamentoAgua()Ljava/lang/Integer;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorParalizarFaturamentoAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorParalizarFaturamentoEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorParalizarFaturamentoEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInscricao()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->inscricao:Ljava/lang/String;

    return-object v0
.end method

.method public getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->ligacaoAguaSituacaoIndicadorLeituraReal:Ljava/lang/Short;

    return-object v0
.end method

.method public getLocalidade()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->localidade:Ljava/lang/String;

    return-object v0
.end method

.method public getLote()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->lote:Ljava/lang/String;

    return-object v0
.end method

.method public getMatriculaCondominio()Ljava/lang/Integer;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->matriculaCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMensagemConta1()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta1:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemConta2()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta2:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemConta3()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta3:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemConta4()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta4:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemConta5()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta5:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemContaAnormalidade1()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade1:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemContaAnormalidade2()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade2:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemContaAnormalidade3()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade3:Ljava/lang/String;

    return-object v0
.end method

.method public getNameId()Ljava/lang/String;
    .locals 1

    const-string v0, "IMOV_ID"

    return-object v0
.end method

.method public getNomeGerenciaRegional()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeGerenciaRegional:Ljava/lang/String;

    return-object v0
.end method

.method public getNomeResponsavel()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeResponsavel:Ljava/lang/String;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "imovel_conta"

    return-object v0
.end method

.method public getNomeUsuario()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCPFOuCNPJClienteConta()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCPFOuCNPJClienteConta:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCodigoBarraGuiaPagamento()Ljava/lang/String;
    .locals 1

    .line 2004
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCodigoBarraGuiaPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroCodigoBarraNotificacaoDebito()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCodigoBarraNotificacaoDebito:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeroConta()Ljava/lang/Integer;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumeroCoordenadaX()Ljava/math/BigDecimal;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCoordenadaX:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroCoordenadaY()Ljava/math/BigDecimal;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCoordenadaY:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroDiasCorte()Ljava/lang/Integer;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroDiasCorte:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumeroImovel()Ljava/lang/Integer;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroImovel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumeroQuadra()Ljava/lang/Integer;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroQuadra:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPercentBaixoConsumo()Ljava/math/BigDecimal;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentBaixoConsumo:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPercentCobrancaEsgoto()Ljava/math/BigDecimal;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentCobrancaEsgoto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPercentColetaEsgoto()Ljava/math/BigDecimal;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentColetaEsgoto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentualAlternativoEsgoto:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPosicao()Ljava/lang/Integer;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosicaoImovelCondominio()Ljava/lang/Integer;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicaoImovelCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosicaoOriginal()Ljava/lang/Integer;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicaoOriginal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQntVezesImpressaoConta()Ljava/lang/Integer;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->qntVezesImpressaoConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSequencialRota()Ljava/lang/Integer;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->sequencialRota:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSituacaoLigAgua()Ljava/lang/Integer;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->situacaoLigAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSituacaoLigEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->situacaoLigEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSublote()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->sublote:Ljava/lang/String;

    return-object v0
.end method

.method public getTelefoneLocalidadeDDD()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->telefoneLocalidadeDDD:Ljava/lang/String;

    return-object v0
.end method

.method public getTipoCalculoTarifa()Ljava/lang/Integer;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->tipoCalculoTarifa:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTipoPoco()Ljava/lang/Integer;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->tipoPoco:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->valorGuiaPagamentoLixo:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->volumeEsgotoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVolumeEsgotoNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->volumeEsgotoNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1945
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isCondominio()Z
    .locals 2

    .line 1967
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1968
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 144
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "IMOV_ID"

    .line 1637
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IMCT_AMREFERENCIACONTA"

    .line 1638
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "IMCT_DSBANCODEBAUTO"

    .line 1639
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "CLIE_ID"

    .line 1640
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "IMCT_CDAGENCIADEBAUTO"

    .line 1641
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "IMCT_CDDEBAUTOMATICO"

    .line 1642
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "ROTA_CDROTA"

    .line 1643
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "CNTA_ID"

    .line 1644
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_NNCPJCNPJCLIENTE"

    .line 1645
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "IMCT_DTCORTEAGUA"

    move/from16 v16, v14

    .line 1646
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v17, v14

    const-string v14, "IMCT_DTEMISSAODOCCOBRAN"

    move-object/from16 v18, v15

    .line 1647
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v14

    const-string v14, "IMCT_DTLEITURAANTNMEDIDO"

    move/from16 v20, v15

    .line 1648
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v21, v14

    const-string v14, "IMCT_DTVALIDADECONTA"

    move/from16 v22, v15

    .line 1649
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v23, v14

    const-string v14, "IMCT_DTVENCIMENTOCONTA"

    move/from16 v24, v15

    .line 1650
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v25, v14

    const-string v14, "IMCT_DGVERIFICADORCONTA"

    move/from16 v26, v15

    .line 1651
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "IMCT_DSENDERECO"

    move-object/from16 v27, v14

    .line 1652
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "IMCT_ENDERECOATENDIMENTO"

    move/from16 v28, v14

    .line 1653
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "IMCT_DSENDERECOENTREGA"

    move/from16 v29, v14

    .line 1654
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v30, v14

    const-string v14, "FTGR_ID"

    move/from16 v31, v15

    .line 1655
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v32, v14

    const-string v14, "FTST_ID"

    move/from16 v33, v15

    .line 1656
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v34, v12

    const-string v12, "FTSH_NNCONSUMOAGUAMEDIDO"

    move/from16 v35, v13

    .line 1657
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "FTSH_NNCONSUMOAGUANAOMEDIDO"

    move-object/from16 v36, v12

    .line 1658
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v37, v12

    const-string v12, "FTSH_NNVOLUMEESGOTOMEDIDO"

    move/from16 v38, v13

    .line 1659
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v39, v12

    const-string v12, "FTSH_NNVOLUMEESGOTONAOMEDIDO"

    move/from16 v40, v13

    .line 1660
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v41, v12

    const-string v12, "IMCT_IDDOCUMENTOCOB"

    move/from16 v42, v13

    .line 1661
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v43, v12

    const-string v12, "IMCT_IDIMOVELCONDOMINIO"

    move/from16 v44, v13

    .line 1662
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v45, v12

    const-string v12, "IMCT_ICABASTECIMENTO"

    move/from16 v46, v13

    .line 1663
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v47, v12

    const-string v12, "IMCT_ICEMISSAOCONTA"

    move/from16 v48, v13

    .line 1664
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v49, v12

    const-string v12, "IMCT_ICFATURAGUA"

    move/from16 v50, v13

    .line 1665
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_ICFATURESGOTO"

    move-object/from16 v51, v12

    .line 1666
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICIMOVCALCULADO"

    move/from16 v52, v12

    .line 1667
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICIMOVELCONDOMINIO"

    move/from16 v53, v12

    .line 1668
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICIMOVENVIADO"

    move/from16 v54, v12

    .line 1669
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICIMOVIMPRESSO"

    move/from16 v55, v12

    .line 1670
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICIMOVELSAZONAL"

    move/from16 v56, v12

    .line 1671
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICONSUMOREALAGUA"

    move/from16 v57, v12

    .line 1672
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICPARALISARAGUA"

    move/from16 v58, v12

    .line 1673
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICPARALISARESGOTO"

    move/from16 v59, v12

    .line 1674
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICRATEIONEGATIVO"

    move/from16 v60, v12

    .line 1675
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSLOCALIDADE"

    move/from16 v61, v12

    .line 1676
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSAGEMCONTA1"

    move/from16 v62, v12

    .line 1677
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSAGEMCONTA2"

    move/from16 v63, v12

    .line 1678
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSAGEMCONTA3"

    move/from16 v64, v12

    .line 1679
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSAGEMCONTA4"

    move/from16 v65, v12

    .line 1680
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSAGEMCONTA5"

    move/from16 v66, v12

    .line 1681
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NMGERENCIA"

    move/from16 v67, v12

    .line 1682
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NMCLIENTEUSUARIO"

    move/from16 v68, v12

    .line 1683
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCODBARRASDOCCOB"

    move/from16 v69, v12

    .line 1684
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONMEDIOESGOTO"

    move/from16 v70, v12

    .line 1685
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSIMOREFAC"

    move/from16 v71, v12

    .line 1686
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSUMOMAXIMOEC"

    move/from16 v72, v12

    .line 1687
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSMINAGUA"

    move/from16 v73, v12

    .line 1688
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSMINESGOTO"

    move/from16 v74, v12

    .line 1689
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSUMOMINIMOVEL"

    move/from16 v75, v12

    .line 1690
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSPCALTERNATIVO"

    move/from16 v76, v12

    .line 1691
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSUMOREFBC"

    move/from16 v77, v12

    .line 1692
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSUMOREFEC"

    move/from16 v78, v12

    .line 1693
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v79, v12

    const-string v12, "IMCT_NNDIASCORTEAGUA"

    move/from16 v80, v13

    .line 1694
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_NNFONEDDD"

    move-object/from16 v81, v12

    .line 1695
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NMINSCRICAO"

    move/from16 v82, v12

    .line 1696
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_LOTE"

    move/from16 v83, v12

    .line 1697
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_SUBLOTE"

    move/from16 v84, v12

    .line 1698
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONMEDIOAGUA"

    move/from16 v85, v12

    .line 1699
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNSEQUENCIALROTA"

    move/from16 v86, v12

    .line 1700
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNVEZESMEDIAALTOCONSUMO"

    move/from16 v87, v12

    .line 1701
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNVEZESMEDIAESTOURO"

    move/from16 v88, v12

    .line 1702
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_PCALTERNATIVOESGOTO"

    move/from16 v89, v12

    .line 1703
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_PCCOLETAESGOTO"

    move/from16 v90, v12

    .line 1704
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_PCESGOTO"

    move/from16 v91, v12

    .line 1705
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_PCMEDIABAIXOCONSUMO"

    move/from16 v92, v12

    .line 1706
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IPER_ID"

    move/from16 v93, v12

    .line 1707
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "POCO_ID"

    move/from16 v94, v12

    .line 1708
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v95, v12

    const-string v12, "IMCT_CDTARIFA"

    move/from16 v96, v13

    .line 1709
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_NMCLIENTERESPONSAVEL"

    move/from16 v97, v13

    .line 1710
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "LAST_ID"

    move/from16 v98, v13

    .line 1711
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "LEST_ID"

    move/from16 v99, v13

    .line 1712
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_IDTARIFATIPOCALCULO"

    move/from16 v100, v13

    .line 1713
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_NNPOSICAOIMOVEL"

    move/from16 v101, v13

    .line 1714
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_NNQUADRA"

    move/from16 v102, v13

    .line 1715
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v103, v13

    .line 1716
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "IMCT_DSMENSCONTAANOR1"

    move-object/from16 v104, v12

    .line 1717
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSCONTAANOR2"

    move/from16 v105, v12

    .line 1718
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DSMENSCONTAANOR3"

    move/from16 v106, v12

    .line 1719
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "LOCA_ID"

    move/from16 v107, v12

    .line 1720
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "STCM_ID"

    move/from16 v108, v12

    .line 1721
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_QTDIMPRESSAO"

    move/from16 v109, v12

    .line 1722
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICNAOPERMITEIMPRESSAO"

    move/from16 v110, v12

    .line 1723
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DTLIGACAOAGUA"

    move/from16 v111, v12

    .line 1725
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DTLIGACAORESTABELECIMENTO"

    move/from16 v112, v12

    .line 1726
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICAREACOMUM"

    move/from16 v113, v12

    .line 1728
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNPOSICAOIMOVELCONDOMINIO"

    move/from16 v114, v12

    .line 1729
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICRATEIOREALIZADO"

    move/from16 v115, v12

    .line 1730
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCOORDENADAX"

    move/from16 v116, v12

    .line 1737
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCOORDENADAY"

    move/from16 v117, v12

    .line 1738
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICCONTINUAIMPRESSAO"

    move/from16 v118, v12

    .line 1739
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "COMU_ID"

    move/from16 v119, v12

    .line 1740
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "LAST_ICLEITURAREAL"

    move/from16 v120, v12

    .line 1741
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_IDCONSUMOTARANTERIOR"

    move/from16 v121, v12

    .line 1743
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCONSUMOMINFATLIGAGUA"

    move/from16 v122, v12

    .line 1744
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DTPROXIMOMES"

    move/from16 v123, v12

    .line 1745
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_ICCONDFATLIGAGUA"

    move/from16 v124, v12

    .line 1746
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_CDTIPODOCUMENTO"

    move/from16 v125, v12

    .line 1747
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNCPFCNPJCLIENTECONTA"

    move/from16 v126, v12

    .line 1748
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_IDLOGRADOURO"

    move/from16 v127, v12

    .line 1750
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_DESCRICAOLOGRADOURO"

    move/from16 v128, v12

    .line 1751
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNIMOVEL"

    move/from16 v129, v12

    .line 1752
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "TRIPER_ID"

    move/from16 v130, v12

    .line 1754
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IPER_NNCONSUMOMINIMO"

    move/from16 v131, v12

    .line 1755
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_ID"

    move/from16 v132, v12

    .line 1756
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_CODIGOBARRA"

    move/from16 v133, v12

    .line 1757
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_VALOR"

    move/from16 v134, v12

    .line 1758
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_DATAVENCIMENTOLIXO"

    move/from16 v135, v12

    .line 1759
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_DEBITOTIPO"

    move/from16 v136, v12

    .line 1760
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "GUIA_ICIMPRESSAOlIXO"

    move/from16 v137, v12

    .line 1761
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "IMCT_NNPOSICAOIMOVEL_ORIGINAL"

    move/from16 v138, v12

    .line 1763
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v139, v12

    .line 1765
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v140, v12

    .line 1768
    :goto_0
    new-instance v12, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v12}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 1770
    invoke-static {v1, v14, v15}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 1775
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v141
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v142, v14

    :try_start_1
    invoke-static/range {v141 .. v141}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v141, v15

    :try_start_2
    new-instance v15, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>()V

    invoke-virtual {v0, v14, v15}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    .line 1777
    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setFaturamentoSituacaoTipo(Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;)V
    :try_end_2
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v142, v14

    :goto_1
    move/from16 v141, v15

    .line 1779
    :goto_2
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ISC"

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    goto :goto_3

    :cond_0
    move-object/from16 v142, v14

    move/from16 v141, v15

    .line 1784
    :goto_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 1785
    invoke-static {v1, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setAnoMesConta(Ljava/lang/Integer;)V

    .line 1786
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDescricaoBanco(Ljava/lang/String;)V

    .line 1787
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoAgencia(Ljava/lang/String;)V

    .line 1788
    invoke-static {v1, v6, v7}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCliente(Ljava/lang/Integer;)V

    .line 1789
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoDebitoAutomatico(Ljava/lang/String;)V

    .line 1790
    invoke-static {v1, v10, v11}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoRota(Ljava/lang/Integer;)V

    move-object/from16 v15, v34

    move/from16 v14, v35

    .line 1791
    invoke-static {v1, v15, v14}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroConta(Ljava/lang/Integer;)V

    move/from16 v34, v2

    move/from16 v2, v16

    .line 1792
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCpfCnpjCliente(Ljava/lang/String;)V

    move/from16 v2, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    .line 1794
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataCorte(Ljava/util/Date;)V

    move/from16 v18, v2

    move/from16 v2, v20

    move-object/from16 v143, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v143

    .line 1796
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataEmissaoDocumento(Ljava/util/Date;)V

    move/from16 v2, v22

    move-object/from16 v143, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v143

    .line 1798
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLeituraAnterior(Ljava/util/Date;)V

    move/from16 v2, v24

    move-object/from16 v143, v23

    move-object/from16 v23, v3

    move-object/from16 v3, v143

    .line 1800
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataValidadeConta(Ljava/util/Date;)V

    move/from16 v2, v26

    move-object/from16 v143, v25

    move-object/from16 v25, v3

    move-object/from16 v3, v143

    .line 1802
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataVencimento(Ljava/util/Date;)V

    move/from16 v2, v31

    move-object/from16 v143, v27

    move-object/from16 v27, v3

    move-object/from16 v3, v143

    .line 1804
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDigitoVerificadorConta(Ljava/lang/Integer;)V

    move-object/from16 v2, v104

    .line 1805
    invoke-static {v1, v2, v13}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoTarifa(Ljava/lang/Integer;)V

    move-object/from16 v35, v3

    move/from16 v3, v28

    .line 1806
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setEndereco(Ljava/lang/String;)V

    move/from16 v3, v29

    .line 1807
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setEnderecoAtendimento(Ljava/lang/String;)V

    move/from16 v3, v30

    .line 1808
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setEnderecoEntrega(Ljava/lang/String;)V

    move/from16 v3, v33

    move-object/from16 v143, v32

    move/from16 v32, v4

    move-object/from16 v4, v143

    .line 1809
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setGrupoFaturamento(Ljava/lang/Integer;)V

    move/from16 v3, v44

    move-object/from16 v143, v43

    move-object/from16 v43, v4

    move-object/from16 v4, v143

    .line 1811
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdDocumentoNotificacaoDebito(Ljava/lang/Integer;)V

    move/from16 v3, v46

    move-object/from16 v143, v45

    move-object/from16 v45, v4

    move-object/from16 v4, v143

    .line 1812
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMatriculaCondominio(Ljava/lang/Integer;)V

    move/from16 v3, v48

    move-object/from16 v143, v47

    move-object/from16 v47, v4

    move-object/from16 v4, v143

    .line 1813
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorAbastecimentoAgua(Ljava/lang/Integer;)V

    move/from16 v3, v50

    move-object/from16 v143, v49

    move-object/from16 v49, v4

    move-object/from16 v4, v143

    .line 1814
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcEmissaoConta(Ljava/lang/Integer;)V

    move/from16 v3, v80

    move-object/from16 v143, v51

    move-object/from16 v51, v4

    move-object/from16 v4, v143

    .line 1815
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoAgua(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICFATURESGOTO"

    move/from16 v3, v52

    .line 1816
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICIMOVCALCULADO"

    move/from16 v3, v53

    .line 1817
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelCalculado(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICIMOVELCONDOMINIO"

    move/from16 v3, v54

    .line 1818
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcCondominio(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICIMOVENVIADO"

    move/from16 v3, v55

    .line 1819
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelEnviado(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICIMOVIMPRESSO"

    move/from16 v3, v56

    .line 1820
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcImovelImpresso(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICIMOVELSAZONAL"

    move/from16 v3, v57

    .line 1821
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorImovelSazonal(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICONSUMOREALAGUA"

    move/from16 v3, v58

    .line 1822
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcConsumoReal(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICPARALISARAGUA"

    move/from16 v3, v59

    .line 1823
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICPARALISARESGOTO"

    move/from16 v3, v60

    .line 1825
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorParalizarFaturamentoEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICRATEIONEGATIVO"

    move/from16 v3, v61

    .line 1826
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndicadorImovelRateioNegativo(Ljava/lang/Integer;)V

    move/from16 v3, v62

    .line 1827
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setLocalidade(Ljava/lang/String;)V

    move/from16 v3, v63

    .line 1828
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta1(Ljava/lang/String;)V

    move/from16 v3, v64

    .line 1829
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta2(Ljava/lang/String;)V

    move/from16 v3, v65

    .line 1830
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta3(Ljava/lang/String;)V

    move/from16 v3, v66

    .line 1831
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta4(Ljava/lang/String;)V

    move/from16 v3, v67

    .line 1832
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemConta5(Ljava/lang/String;)V

    move/from16 v3, v68

    .line 1833
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeGerenciaRegional(Ljava/lang/String;)V

    move/from16 v3, v69

    .line 1834
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeUsuario(Ljava/lang/String;)V

    move/from16 v3, v70

    .line 1835
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCodigoBarraNotificacaoDebito(Ljava/lang/String;)V

    const-string v0, "IMCT_NNCONMEDIOESGOTO"

    move/from16 v3, v71

    .line 1836
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMedioEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSIMOREFAC"

    move/from16 v3, v72

    .line 1837
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setAltoConsumo(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSUMOMAXIMOEC"

    move/from16 v3, v73

    .line 1838
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMaximo(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSMINESGOTO"

    move/from16 v3, v75

    .line 1839
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSMINAGUA"

    move/from16 v3, v74

    .line 1840
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinAgua(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSUMOMINIMOVEL"

    move/from16 v3, v76

    .line 1841
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoImovel(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSPCALTERNATIVO"

    move/from16 v3, v77

    .line 1842
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoPercentualAlternativoEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSUMOREFBC"

    move/from16 v3, v78

    .line 1843
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setBaixoConsumo(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSUMOREFEC"

    move/from16 v3, v79

    .line 1844
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoEstouro(Ljava/lang/Integer;)V

    move/from16 v3, v96

    move-object/from16 v143, v81

    move-object/from16 v81, v4

    move-object/from16 v4, v143

    .line 1845
    invoke-static {v1, v4, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroDiasCorte(Ljava/lang/Integer;)V

    move/from16 v3, v82

    .line 1846
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setTelefoneLocalidadeDDD(Ljava/lang/String;)V

    move/from16 v3, v83

    .line 1847
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setInscricao(Ljava/lang/String;)V

    move/from16 v3, v84

    .line 1848
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setLote(Ljava/lang/String;)V

    move/from16 v3, v85

    .line 1849
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setSublote(Ljava/lang/String;)V

    const-string v0, "IMCT_NNCONMEDIOAGUA"

    move/from16 v3, v86

    .line 1850
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMedioLigacaoAgua(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNSEQUENCIALROTA"

    move/from16 v3, v87

    .line 1851
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setSequencialRota(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNVEZESMEDIAALTOCONSUMO"

    move/from16 v3, v88

    .line 1852
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setFatorMultMediaAltoConsumo(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_NNVEZESMEDIAESTOURO"

    move/from16 v3, v89

    .line 1853
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setFatorMultEstouro(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_PCALTERNATIVOESGOTO"

    move/from16 v3, v90

    .line 1854
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentualAlternativoEsgoto(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_PCCOLETAESGOTO"

    move/from16 v3, v91

    .line 1855
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentColetaEsgoto(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_PCESGOTO"

    move/from16 v3, v92

    .line 1856
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentCobrancaEsgoto(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_PCMEDIABAIXOCONSUMO"

    move/from16 v3, v93

    .line 1857
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPercentBaixoConsumo(Ljava/math/BigDecimal;)V

    const-string v0, "IPER_ID"

    move/from16 v3, v94

    .line 1858
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoPerfil(Ljava/lang/Integer;)V

    const-string v0, "POCO_ID"

    move/from16 v3, v95

    .line 1859
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setTipoPoco(Ljava/lang/Integer;)V

    move/from16 v3, v98

    .line 1861
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNomeResponsavel(Ljava/lang/String;)V

    const-string v0, "LAST_ID"

    move/from16 v3, v99

    .line 1862
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setSituacaoLigAgua(Ljava/lang/Integer;)V

    const-string v0, "LEST_ID"

    move/from16 v3, v100

    .line 1863
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setSituacaoLigEsgoto(Ljava/lang/Integer;)V

    const-string v0, "IMCT_IDTARIFATIPOCALCULO"

    move/from16 v3, v101

    .line 1864
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setTipoCalculoTarifa(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNPOSICAOIMOVEL"

    move/from16 v3, v102

    .line 1865
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicao(Ljava/lang/Integer;)V

    move/from16 v3, v97

    .line 1866
    invoke-static {v1, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoTarifa(Ljava/lang/Integer;)V

    move/from16 v2, v105

    .line 1867
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade1(Ljava/lang/String;)V

    move/from16 v2, v106

    .line 1868
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade2(Ljava/lang/String;)V

    move/from16 v2, v107

    .line 1869
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setMensagemContaAnormalidade3(Ljava/lang/String;)V

    const-string v0, "IMCT_NNQUADRA"

    move/from16 v2, v103

    .line 1870
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroQuadra(Ljava/lang/Integer;)V

    move-object/from16 v3, v36

    move/from16 v2, v38

    .line 1871
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoAguaMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    move/from16 v2, v37

    .line 1872
    invoke-static {v1, v4, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoAguaNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    move-object/from16 v3, v39

    move/from16 v2, v40

    .line 1873
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setVolumeEsgotoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    move-object/from16 v3, v41

    move/from16 v2, v42

    .line 1874
    invoke-static {v1, v3, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setVolumeEsgotoNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V

    const-string v0, "IMCT_DSLOCALIDADE"

    move/from16 v2, v108

    .line 1875
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdLocalidade(Ljava/lang/Integer;)V

    const-string v0, "STCM_ID"

    move/from16 v2, v109

    .line 1876
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdSetorComercial(Ljava/lang/Integer;)V

    const-string v0, "IMCT_QTDIMPRESSAO"

    move/from16 v2, v110

    .line 1877
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setQntVezesImpressaoConta(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICNAOPERMITEIMPRESSAO"

    move/from16 v2, v111

    .line 1878
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V

    const-string v0, "IMCT_DTLIGACAOAGUA"

    move/from16 v2, v112

    .line 1880
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLigacaoAgua(Ljava/util/Date;)V

    const-string v0, "IMCT_DTLIGACAORESTABELECIMENTO"

    move/from16 v2, v113

    .line 1881
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataLigacaoRestabelecimento(Ljava/util/Date;)V

    const-string v0, "IMCT_ICAREACOMUM"

    move/from16 v2, v114

    .line 1883
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcAreaComum(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNPOSICAOIMOVELCONDOMINIO"

    move/from16 v2, v115

    .line 1884
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicaoImovelCondominio(Ljava/lang/Integer;)V

    const-string v0, "IMCT_ICRATEIOREALIZADO"

    move/from16 v2, v116

    .line 1885
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcRateioRealizado(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCOORDENADAX"

    move/from16 v2, v117

    .line 1892
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCoordenadaX(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_NNCOORDENADAY"

    move/from16 v2, v118

    .line 1893
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCoordenadaY(Ljava/math/BigDecimal;)V

    const-string v0, "IMCT_ICCONTINUAIMPRESSAO"

    move/from16 v2, v119

    .line 1894
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIndcContinuaImpressao(Ljava/lang/Integer;)V

    const-string v0, "COMU_ID"

    move/from16 v2, v120

    .line 1896
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1900
    :try_start_3
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 1901
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v41
    :try_end_3
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v120, v2

    :try_start_4
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_4
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v41, v3

    :try_start_5
    new-instance v3, Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {v3}, Lcom/br/ipad/isc/bean/ContaComunicado;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ContaComunicado;

    .line 1903
    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setContaComunicado(Lcom/br/ipad/isc/bean/ContaComunicado;)V
    :try_end_5
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move/from16 v120, v2

    :goto_4
    move-object/from16 v41, v3

    .line 1905
    :goto_5
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISC"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    goto :goto_6

    :cond_1
    move/from16 v120, v2

    move-object/from16 v41, v3

    :goto_6
    move/from16 v2, v121

    .line 1910
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setLigacaoAguaSituacaoIndicadorLeituraReal(Ljava/lang/Short;)V

    const-string v0, "IMCT_IDCONSUMOTARANTERIOR"

    move/from16 v3, v122

    .line 1912
    invoke-static {v1, v0, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdConsumoTarifaAnterior(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNCONSUMOMINFATLIGAGUA"

    move/from16 v121, v2

    move/from16 v2, v123

    .line 1913
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoFaturamentoLigAguaSit(Ljava/lang/Integer;)V

    const-string v0, "IMCT_DTPROXIMOMES"

    move/from16 v2, v124

    .line 1914
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataPrevistaProximoMes(Ljava/util/Date;)V

    const-string v0, "IMCT_ICCONDFATLIGAGUA"

    move/from16 v2, v125

    .line 1915
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdDocumentoNotificacaoDebito(Ljava/lang/Integer;)V

    const-string v0, "IMCT_CDTIPODOCUMENTO"

    move/from16 v2, v126

    .line 1916
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setCodigoTipoDocumento(Ljava/lang/Integer;)V

    move/from16 v2, v127

    .line 1917
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCPFOuCNPJClienteConta(Ljava/lang/String;)V

    const-string v0, "IMCT_IDLOGRADOURO"

    move/from16 v2, v128

    .line 1919
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdLogradouro(Ljava/lang/Integer;)V

    move/from16 v2, v129

    .line 1920
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDescricaoLogradouro(Ljava/lang/String;)V

    const-string v0, "IMCT_NNIMOVEL"

    move/from16 v2, v130

    .line 1921
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroImovel(Ljava/lang/Integer;)V

    const-string v0, "TRIPER_ID"

    move/from16 v2, v131

    .line 1923
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdPerfilTarifa(Ljava/lang/Integer;)V

    const-string v0, "IPER_NNCONSUMOMINIMO"

    move/from16 v2, v132

    .line 1924
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setConsumoMinimoPerfilTarifa(Ljava/lang/Integer;)V

    const-string v0, "GUIA_ID"

    move/from16 v2, v133

    .line 1925
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIdGuiaPagamentoLixo(Ljava/lang/Integer;)V

    move/from16 v2, v134

    .line 1926
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setNumeroCodigoBarraGuiaPagamento(Ljava/lang/String;)V

    const-string v0, "GUIA_VALOR"

    move/from16 v2, v135

    .line 1927
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setValorGuiaPagamentoLixo(Ljava/math/BigDecimal;)V

    const-string v0, "GUIA_DATAVENCIMENTOLIXO"

    move/from16 v2, v136

    .line 1928
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDataVencimentoGuiaLixo(Ljava/util/Date;)V

    move/from16 v2, v137

    .line 1929
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setDebitoTipoGuiaLixo(Ljava/lang/String;)V

    const-string v0, "GUIA_ICIMPRESSAOlIXO"

    move/from16 v2, v138

    .line 1930
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setIcImpressaoGuiaLixo(Ljava/lang/Integer;)V

    const-string v0, "IMCT_NNPOSICAOIMOVEL_ORIGINAL"

    move/from16 v2, v139

    .line 1932
    invoke-static {v1, v0, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicaoOriginal(Ljava/lang/Integer;)V

    move-object/from16 v1, v140

    .line 1934
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    move-object/from16 v140, v1

    move/from16 v139, v2

    move/from16 v122, v3

    move-object/from16 v3, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move/from16 v2, v34

    move-object/from16 v27, v35

    move-object/from16 v1, p1

    move/from16 v35, v14

    move-object/from16 v34, v15

    move/from16 v15, v141

    move-object/from16 v14, v142

    move-object/from16 v143, v81

    move-object/from16 v81, v4

    move/from16 v4, v32

    move-object/from16 v32, v43

    move-object/from16 v43, v45

    move-object/from16 v45, v47

    move-object/from16 v47, v49

    move-object/from16 v49, v51

    move-object/from16 v51, v143

    goto/16 :goto_0
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 1424
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1426
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_AMREFERENCIACONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNPOSICAOIMOVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDescricaoBanco()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSBANCODEBAUTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCliente()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CLIE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoAgencia()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_CDAGENCIADEBAUTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoDebitoAutomatico()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_CDDEBAUTOMATICO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_CDROTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CNTA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1435
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCpfCnpjCliente()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNCPJCNPJCLIENTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataCorte()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTCORTEAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1440
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataEmissaoDocumento()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataEmissaoDocumento()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTEMISSAODOCCOBRAN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataValidadeConta()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1444
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataValidadeConta()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTVALIDADECONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1447
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1448
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTLEITURAANTNMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1450
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1451
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimento()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTVENCIMENTOCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1454
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDigitoVerificadorConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_DGVERIFICADORCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1455
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getEndereco()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSENDERECO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoAtendimento()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_ENDERECOATENDIMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getEnderecoEntrega()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSENDERECOENTREGA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTGR_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1460
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFaturamentoSituacaoTipo()Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    :cond_5
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_IDDOCUMENTOCOB"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_IDIMOVELCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1464
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorAbastecimentoAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICABASTECIMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1465
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcEmissaoConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICEMISSAOCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1466
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICFATURAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1467
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICFATURESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1468
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICIMOVCALCULADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICIMOVELCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1470
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelEnviado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICIMOVENVIADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1471
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICIMOVIMPRESSO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelSazonal()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICIMOVELSAZONAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcConsumoReal()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICONSUMOREALAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICPARALISARAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorParalizarFaturamentoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICPARALISARESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndicadorImovelRateioNegativo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICRATEIONEGATIVO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1477
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getLocalidade()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSLOCALIDADE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSAGEMCONTA1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSAGEMCONTA2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSAGEMCONTA3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta4()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSAGEMCONTA4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemConta5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSAGEMCONTA5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeGerenciaRegional()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NMGERENCIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeUsuario()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NMCLIENTEUSUARIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraNotificacaoDebito()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNCODBARRASDOCCOB"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONMEDIOESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAltoConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSIMOREFAC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1488
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMaximo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSUMOMAXIMOEC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1489
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSMINAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1490
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSMINESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoImovel()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSUMOMINIMOVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1492
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoPercentualAlternativoEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSPCALTERNATIVO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getBaixoConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSUMOREFBC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoEstouro()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSUMOREFEC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroDiasCorte()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNDIASCORTEAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getTelefoneLocalidadeDDD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNFONEDDD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NMINSCRICAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getLote()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_LOTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSublote()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_SUBLOTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMedioLigacaoAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONMEDIOAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1501
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSequencialRota()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNSEQUENCIALROTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultMediaAltoConsumo()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1503
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultMediaAltoConsumo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNVEZESMEDIAALTOCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_6
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultEstouro()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1506
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getFatorMultEstouro()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNVEZESMEDIAESTOURO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_7
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1509
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentualAlternativoEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_PCALTERNATIVOESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1512
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentColetaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_PCCOLETAESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_9
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1515
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentCobrancaEsgoto()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_PCESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_a
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentBaixoConsumo()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1518
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPercentBaixoConsumo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_PCMEDIABAIXOCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_b
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoPerfil()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IPER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1521
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "POCO_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1522
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNomeResponsavel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NMCLIENTERESPONSAVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LAST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getSituacaoLigEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LEST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoCalculoTarifa()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_IDTARIFATIPOCALCULO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTarifa()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_CDTARIFA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1527
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTSH_NNCONSUMOAGUAMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1528
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoAguaNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTSH_NNCONSUMOAGUANAOMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1529
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTSH_NNVOLUMEESGOTOMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getVolumeEsgotoNaoMedidoHistoricoFaturamento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FTSH_NNVOLUMEESGOTONAOMEDIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroQuadra()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNQUADRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSCONTAANOR1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSCONTAANOR2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMensagemContaAnormalidade3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DSMENSCONTAANOR3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOCA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STCM_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1538
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1539
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_QTDIMPRESSAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    :cond_c
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcNaoPermiteImpressao()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1543
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcNaoPermiteImpressao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICNAOPERMITEIMPRESSAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1546
    :cond_d
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoAgua()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1547
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoAgua()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTLIGACAOAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1549
    :cond_e
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoRestabelecimento()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1550
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataLigacaoRestabelecimento()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTLIGACAORESTABELECIMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1553
    :cond_f
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcAreaComum()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICAREACOMUM"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNPOSICAOIMOVELCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcRateioRealizado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICRATEIOREALIZADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1558
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_TMULTIMAALTERACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1560
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaX()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1561
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaX()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNCOORDENADAX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_10
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaY()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1565
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaY()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNCOORDENADAY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :cond_11
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcContinuaImpressao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICCONTINUAIMPRESSAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1570
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1571
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getContaComunicado()Lcom/br/ipad/isc/bean/ContaComunicado;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ContaComunicado;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMU_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1574
    :cond_12
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1575
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getLigacaoAguaSituacaoIndicadorLeituraReal()Ljava/lang/Short;

    move-result-object v1

    const-string v2, "LAST_ICLEITURAREAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 1578
    :cond_13
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdConsumoTarifaAnterior()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1579
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdConsumoTarifaAnterior()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_IDCONSUMOTARANTERIOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1581
    :cond_14
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1582
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoFaturamentoLigAguaSit()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNCONSUMOMINFATLIGAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    :cond_15
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataPrevistaProximoMes()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1585
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataPrevistaProximoMes()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "IMCT_DTPROXIMOMES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1587
    :cond_16
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondicionarFaturamentoAConsumoLigacaoAgua()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1588
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondicionarFaturamentoAConsumoLigacaoAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_ICCONDFATLIGAGUA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    :cond_17
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTipoDocumento()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1591
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoTipoDocumento()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_CDTIPODOCUMENTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    :cond_18
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCPFOuCNPJClienteConta()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1594
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCPFOuCNPJClienteConta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_NNCPFCNPJCLIENTECONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :cond_19
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLogradouro()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_IDLOGRADOURO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1598
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDescricaoLogradouro()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMCT_DESCRICAOLOGRADOURO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroImovel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1600
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroImovel()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNIMOVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1603
    :cond_1a
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1604
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TRIPER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1607
    :cond_1b
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1608
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinimoPerfilTarifa()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IPER_NNCONSUMOMINIMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1610
    :cond_1c
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1611
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GUIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    :cond_1d
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraGuiaPagamento()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1614
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCodigoBarraGuiaPagamento()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GUIA_CODIGOBARRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_1e
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1617
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getValorGuiaPagamentoLixo()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GUIA_VALOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :cond_1f
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimentoGuiaLixo()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1620
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDataVencimentoGuiaLixo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GUIA_DATAVENCIMENTOLIXO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1622
    :cond_20
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDebitoTipoGuiaLixo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1623
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getDebitoTipoGuiaLixo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GUIA_DEBITOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :cond_21
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1626
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GUIA_ICIMPRESSAOlIXO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    :cond_22
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoOriginal()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMCT_NNPOSICAOIMOVEL_ORIGINAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setAltoConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->altoConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setAnoMesConta(Ljava/lang/Integer;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->anoMesConta:Ljava/lang/Integer;

    return-void
.end method

.method public setBaixoConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->baixoConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setCliente(Ljava/lang/Integer;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->cliente:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoAgencia(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoAgencia:Ljava/lang/String;

    return-void
.end method

.method public setCodigoDebitoAutomatico(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoDebitoAutomatico:Ljava/lang/String;

    return-void
.end method

.method public setCodigoPerfil(Ljava/lang/Integer;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoPerfil:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoRota(Ljava/lang/Integer;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoRota:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoTarifa(Ljava/lang/Integer;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoTarifa:Ljava/lang/Integer;

    return-void
.end method

.method public setCodigoTipoDocumento(Ljava/lang/Integer;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->codigoTipoDocumento:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoAguaMedidoHistoricoFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoAguaMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoAguaNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoAguaNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoEstouro(Ljava/lang/Integer;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoEstouro:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMaximo(Ljava/lang/Integer;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMaximo:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMedioEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMedioEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMedioLigacaoAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMedioLigacaoAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinimoFaturamentoLigAguaSit(Ljava/lang/Integer;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoFaturamentoLigAguaSit:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinimoImovel(Ljava/lang/Integer;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoImovel:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoMinimoPerfilTarifa(Ljava/lang/Integer;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoMinimoPerfilTarifa:Ljava/lang/Integer;

    return-void
.end method

.method public setConsumoPercentualAlternativoEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->consumoPercentualAlternativoEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setContaComunicado(Lcom/br/ipad/isc/bean/ContaComunicado;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->contaComunicado:Lcom/br/ipad/isc/bean/ContaComunicado;

    return-void
.end method

.method public setCpfCnpjCliente(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->cpfCnpjCliente:Ljava/lang/String;

    return-void
.end method

.method public setDataCorte(Ljava/lang/Long;)V
    .locals 3

    .line 615
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataCorte:Ljava/util/Date;

    return-void
.end method

.method public setDataCorte(Ljava/util/Date;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataCorte:Ljava/util/Date;

    return-void
.end method

.method public setDataEmissaoDocumento(Ljava/lang/Long;)V
    .locals 3

    .line 695
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataEmissaoDocumento:Ljava/util/Date;

    return-void
.end method

.method public setDataEmissaoDocumento(Ljava/util/Date;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataEmissaoDocumento:Ljava/util/Date;

    return-void
.end method

.method public setDataLeituraAnterior(Ljava/lang/Long;)V
    .locals 3

    .line 689
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLeituraAnterior:Ljava/util/Date;

    return-void
.end method

.method public setDataLeituraAnterior(Ljava/util/Date;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLeituraAnterior:Ljava/util/Date;

    return-void
.end method

.method public setDataLigacaoAgua(Ljava/lang/Long;)V
    .locals 3

    .line 751
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoAgua:Ljava/util/Date;

    return-void
.end method

.method public setDataLigacaoAgua(Ljava/util/Date;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoAgua:Ljava/util/Date;

    return-void
.end method

.method public setDataLigacaoRestabelecimento(Ljava/lang/Long;)V
    .locals 3

    .line 760
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoRestabelecimento:Ljava/util/Date;

    return-void
.end method

.method public setDataLigacaoRestabelecimento(Ljava/util/Date;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataLigacaoRestabelecimento:Ljava/util/Date;

    return-void
.end method

.method public setDataPrevistaProximoMes(Ljava/util/Date;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataPrevistaProximoMes:Ljava/util/Date;

    return-void
.end method

.method public setDataValidadeConta(Ljava/lang/Long;)V
    .locals 3

    .line 683
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataValidadeConta:Ljava/util/Date;

    return-void
.end method

.method public setDataValidadeConta(Ljava/util/Date;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataValidadeConta:Ljava/util/Date;

    return-void
.end method

.method public setDataVencimento(Ljava/lang/Long;)V
    .locals 3

    .line 677
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataVencimento:Ljava/util/Date;

    return-void
.end method

.method public setDataVencimento(Ljava/util/Date;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataVencimento:Ljava/util/Date;

    return-void
.end method

.method public setDataVencimentoGuiaLixo(Ljava/util/Date;)V
    .locals 0

    .line 2024
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->dataVencimentoGuiaLixo:Ljava/util/Date;

    return-void
.end method

.method public setDebitoTipoGuiaLixo(Ljava/lang/String;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->debitoTipoGuiaLixo:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoBanco(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->descricaoBanco:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoLogradouro(Ljava/lang/String;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->descricaoLogradouro:Ljava/lang/String;

    return-void
.end method

.method public setDigitoVerificadorConta(Ljava/lang/Integer;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->digitoVerificadorConta:Ljava/lang/Integer;

    return-void
.end method

.method public setEndereco(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->endereco:Ljava/lang/String;

    return-void
.end method

.method public setEnderecoAtendimento(Ljava/lang/String;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->enderecoAtendimento:Ljava/lang/String;

    return-void
.end method

.method public setEnderecoEntrega(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->enderecoEntrega:Ljava/lang/String;

    return-void
.end method

.method public setFatorMultEstouro(Ljava/math/BigDecimal;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->fatorMultEstouro:Ljava/math/BigDecimal;

    return-void
.end method

.method public setFatorMultMediaAltoConsumo(Ljava/math/BigDecimal;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->fatorMultMediaAltoConsumo:Ljava/math/BigDecimal;

    return-void
.end method

.method public setFaturamentoSituacaoTipo(Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->faturamentoSituacaoTipo:Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    return-void
.end method

.method public setGrupoFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->grupoFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setIcImpressaoGuiaLixo(Ljava/lang/Integer;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->icImpressaoGuiaLixo:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoTarifaAnterior(Ljava/lang/Integer;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idConsumoTarifaAnterior:Ljava/lang/Integer;

    return-void
.end method

.method public setIdDocumentoNotificacaoDebito(Ljava/lang/Integer;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idDocumentoNotificacaoDebito:Ljava/lang/Integer;

    return-void
.end method

.method public setIdGuiaPagamentoLixo(Ljava/lang/Integer;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idGuiaPagamentoLixo:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLocalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idLocalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLogradouro(Ljava/lang/Integer;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idLogradouro:Ljava/lang/Integer;

    return-void
.end method

.method public setIdPerfilTarifa(Ljava/lang/Integer;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idPerfilTarifa:Ljava/lang/Integer;

    return-void
.end method

.method public setIdSetorComercial(Ljava/lang/Integer;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->idSetorComercial:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 671
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcAreaComum(Ljava/lang/Integer;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcAreaComum:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcCondicionarFaturamentoAConsumoLigacaoAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcCondicionarFaturamentoAConsumoLigacaoAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcConsumoReal(Ljava/lang/Integer;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcConsumoReal:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcContinuaImpressao(Ljava/lang/Integer;)V
    .locals 0

    .line 1984
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcContinuaImpressao:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcEmissaoConta(Ljava/lang/Integer;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcEmissaoConta:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcFaturamentoAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcFaturamentoAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcFaturamentoEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcFaturamentoEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcImovelCalculado(Ljava/lang/Integer;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelCalculado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcImovelEnviado(Ljava/lang/Integer;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelEnviado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcImovelImpresso(Ljava/lang/Integer;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcImovelImpresso:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcNaoPermiteImpressao(Ljava/lang/Integer;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcNaoPermiteImpressao:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcRateioRealizado(Ljava/lang/Integer;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indcRateioRealizado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorAbastecimentoAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorAbastecimentoAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorImovelRateioNegativo(Ljava/lang/Integer;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorImovelRateioNegativo:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorImovelSazonal(Ljava/lang/Integer;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorImovelSazonal:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorParalizarFaturamentoAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorParalizarFaturamentoAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorParalizarFaturamentoEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->indicadorParalizarFaturamentoEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setInscricao(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->inscricao:Ljava/lang/String;

    return-void
.end method

.method public setLigacaoAguaSituacaoIndicadorLeituraReal(Ljava/lang/Short;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->ligacaoAguaSituacaoIndicadorLeituraReal:Ljava/lang/Short;

    return-void
.end method

.method public setLocalidade(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->localidade:Ljava/lang/String;

    return-void
.end method

.method public setLote(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->lote:Ljava/lang/String;

    return-void
.end method

.method public setMatriculaCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->matriculaCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setMensagemConta1(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta1:Ljava/lang/String;

    return-void
.end method

.method public setMensagemConta2(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta2:Ljava/lang/String;

    return-void
.end method

.method public setMensagemConta3(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta3:Ljava/lang/String;

    return-void
.end method

.method public setMensagemConta4(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta4:Ljava/lang/String;

    return-void
.end method

.method public setMensagemConta5(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemConta5:Ljava/lang/String;

    return-void
.end method

.method public setMensagemContaAnormalidade1(Ljava/lang/String;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade1:Ljava/lang/String;

    return-void
.end method

.method public setMensagemContaAnormalidade2(Ljava/lang/String;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade2:Ljava/lang/String;

    return-void
.end method

.method public setMensagemContaAnormalidade3(Ljava/lang/String;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->mensagemContaAnormalidade3:Ljava/lang/String;

    return-void
.end method

.method public setNomeGerenciaRegional(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeGerenciaRegional:Ljava/lang/String;

    return-void
.end method

.method public setNomeResponsavel(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeResponsavel:Ljava/lang/String;

    return-void
.end method

.method public setNomeUsuario(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->nomeUsuario:Ljava/lang/String;

    return-void
.end method

.method public setNumeroCPFOuCNPJClienteConta(Ljava/lang/String;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCPFOuCNPJClienteConta:Ljava/lang/String;

    return-void
.end method

.method public setNumeroCodigoBarraGuiaPagamento(Ljava/lang/String;)V
    .locals 0

    .line 2008
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCodigoBarraGuiaPagamento:Ljava/lang/String;

    return-void
.end method

.method public setNumeroCodigoBarraNotificacaoDebito(Ljava/lang/String;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCodigoBarraNotificacaoDebito:Ljava/lang/String;

    return-void
.end method

.method public setNumeroConta(Ljava/lang/Integer;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroConta:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroCoordenadaX(Ljava/math/BigDecimal;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCoordenadaX:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroCoordenadaY(Ljava/math/BigDecimal;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroCoordenadaY:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroDiasCorte(Ljava/lang/Integer;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroDiasCorte:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroImovel(Ljava/lang/Integer;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroImovel:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroQuadra(Ljava/lang/Integer;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->numeroQuadra:Ljava/lang/Integer;

    return-void
.end method

.method public setPercentBaixoConsumo(Ljava/math/BigDecimal;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentBaixoConsumo:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPercentCobrancaEsgoto(Ljava/math/BigDecimal;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentCobrancaEsgoto:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPercentColetaEsgoto(Ljava/math/BigDecimal;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentColetaEsgoto:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPercentualAlternativoEsgoto(Ljava/math/BigDecimal;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->percentualAlternativoEsgoto:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPosicao(Ljava/lang/Integer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicao:Ljava/lang/Integer;

    return-void
.end method

.method public setPosicaoImovelCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicaoImovelCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setPosicaoOriginal(Ljava/lang/Integer;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->posicaoOriginal:Ljava/lang/Integer;

    return-void
.end method

.method public setQntVezesImpressaoConta(Ljava/lang/Integer;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->qntVezesImpressaoConta:Ljava/lang/Integer;

    return-void
.end method

.method public setSequencialRota(Ljava/lang/Integer;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->sequencialRota:Ljava/lang/Integer;

    return-void
.end method

.method public setSituacaoLigAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->situacaoLigAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setSituacaoLigEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->situacaoLigEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setSublote(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->sublote:Ljava/lang/String;

    return-void
.end method

.method public setTelefoneLocalidadeDDD(Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->telefoneLocalidadeDDD:Ljava/lang/String;

    return-void
.end method

.method public setTipoCalculoTarifa(Ljava/lang/Integer;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->tipoCalculoTarifa:Ljava/lang/Integer;

    return-void
.end method

.method public setTipoPoco(Ljava/lang/Integer;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->tipoPoco:Ljava/lang/Integer;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 707
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorGuiaPagamentoLixo(Ljava/math/BigDecimal;)V
    .locals 0

    .line 2016
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->valorGuiaPagamentoLixo:Ljava/math/BigDecimal;

    return-void
.end method

.method public setVolumeEsgotoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->volumeEsgotoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-void
.end method

.method public setVolumeEsgotoNaoMedidoHistoricoFaturamento(Ljava/lang/Integer;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelConta;->volumeEsgotoNaoMedidoHistoricoFaturamento:Ljava/lang/Integer;

    return-void
.end method
