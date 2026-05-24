.class public final Lcom/br/ipad/isc/bean/ImovelConta$ImovelContas;
.super Ljava/lang/Object;
.source "ImovelConta.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ImovelConta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImovelContas"
.end annotation


# static fields
.field public static final ANOMESREFERENCIACONTA:Ljava/lang/String; = "IMCT_AMREFERENCIACONTA"

.field public static final BANCODEBITOAUTO:Ljava/lang/String; = "IMCT_DSBANCODEBAUTO"

.field public static final CDTIPODOCUMENTO:Ljava/lang/String; = "IMCT_CDTIPODOCUMENTO"

.field public static final CLIENTE:Ljava/lang/String; = "CLIE_ID"

.field public static final CODIGOAGENCIADEBITOAUTO:Ljava/lang/String; = "IMCT_CDAGENCIADEBAUTO"

.field public static final CODIGODEBITOAUTOMATICO:Ljava/lang/String; = "IMCT_CDDEBAUTOMATICO"

.field public static final CODIGOROTA:Ljava/lang/String; = "ROTA_CDROTA"

.field public static final CODIGOTARIFA:Ljava/lang/String; = "IMCT_CDTARIFA"

.field public static final CONSUMOMINIMOFATLIGAGUA:Ljava/lang/String; = "IMCT_NNCONSUMOMINFATLIGAGUA"

.field public static final CONSUMOMINIMOPERFILTARIFA:Ljava/lang/String; = "IPER_NNCONSUMOMINIMO"

.field public static final CONTA:Ljava/lang/String; = "CNTA_ID"

.field public static final CONTA_COMUNICADO:Ljava/lang/String; = "COMU_ID"

.field public static final COORDENADAX:Ljava/lang/String; = "IMCT_NNCOORDENADAX"

.field public static final COORDENADAY:Ljava/lang/String; = "IMCT_NNCOORDENADAY"

.field public static final CPFCNPJCLIENTE:Ljava/lang/String; = "IMCT_NNCPJCNPJCLIENTE"

.field public static final DATACORTEAGUA:Ljava/lang/String; = "IMCT_DTCORTEAGUA"

.field public static final DATAEMISSAODOCCOBRAN:Ljava/lang/String; = "IMCT_DTEMISSAODOCCOBRAN"

.field public static final DATALEITURAANTERIORNMEDIDO:Ljava/lang/String; = "IMCT_DTLEITURAANTNMEDIDO"

.field public static final DATALIGACAOAGUA:Ljava/lang/String; = "IMCT_DTLIGACAOAGUA"

.field public static final DATALIGACAORESTABELECIMENTO:Ljava/lang/String; = "IMCT_DTLIGACAORESTABELECIMENTO"

.field public static final DATAVALIDADECONTA:Ljava/lang/String; = "IMCT_DTVALIDADECONTA"

.field public static final DATAVENCIMENTOCONTA:Ljava/lang/String; = "IMCT_DTVENCIMENTOCONTA"

.field public static final DATAVENCIMENTOGUIALIXO:Ljava/lang/String; = "GUIA_DATAVENCIMENTOLIXO"

.field public static final DEBITOTIPOGUIALIXO:Ljava/lang/String; = "GUIA_DEBITOTIPO"

.field public static final DESCRICAOLOGRADOURO:Ljava/lang/String; = "IMCT_DESCRICAOLOGRADOURO"

.field public static final DIGITOVERIFICADORCONTA:Ljava/lang/String; = "IMCT_DGVERIFICADORCONTA"

.field public static final DTPROXIMOMES:Ljava/lang/String; = "IMCT_DTPROXIMOMES"

.field public static final ENDERECO:Ljava/lang/String; = "IMCT_DSENDERECO"

.field public static final ENDERECOATENDIMENTO:Ljava/lang/String; = "IMCT_ENDERECOATENDIMENTO"

.field public static final ENDERECOENTREGA:Ljava/lang/String; = "IMCT_DSENDERECOENTREGA"

.field public static final FATURAMENTOGRUPO:Ljava/lang/String; = "FTGR_ID"

.field public static final FATURAMENTOSITUACAOTIPO:Ljava/lang/String; = "FTST_ID"

.field public static final ICIMPRESSAOGUIALIXO:Ljava/lang/String; = "GUIA_ICIMPRESSAOlIXO"

.field public static final ID:Ljava/lang/String; = "IMOV_ID"

.field public static final IDCONSUMOTARIFAANTERIOR:Ljava/lang/String; = "IMCT_IDCONSUMOTARANTERIOR"

.field public static final IDDOCUMENTOCOB:Ljava/lang/String; = "IMCT_IDDOCUMENTOCOB"

.field public static final IDGUIAPAGAMENTOLIXO:Ljava/lang/String; = "GUIA_ID"

.field public static final IDIMOVELCONDOMINIO:Ljava/lang/String; = "IMCT_IDIMOVELCONDOMINIO"

.field public static final IDLOCALIDADE:Ljava/lang/String; = "LOCA_ID"

.field public static final IDLOGRADOURO:Ljava/lang/String; = "IMCT_IDLOGRADOURO"

.field public static final IDPERFILTARIFA:Ljava/lang/String; = "TRIPER_ID"

.field public static final IDSETORCOMERCIAL:Ljava/lang/String; = "STCM_ID"

.field public static final INDCONDICIONARFATACONLIGAGUA:Ljava/lang/String; = "IMCT_ICCONDFATLIGAGUA"

.field public static final INDICADORABASTECIMENTO:Ljava/lang/String; = "IMCT_ICABASTECIMENTO"

.field public static final INDICADORAREACOMUM:Ljava/lang/String; = "IMCT_ICAREACOMUM"

.field public static final INDICADORCONTINUAIMPRESSAO:Ljava/lang/String; = "IMCT_ICCONTINUAIMPRESSAO"

.field public static final INDICADOREMISSAOCONTA:Ljava/lang/String; = "IMCT_ICEMISSAOCONTA"

.field public static final INDICADORFATURAGUA:Ljava/lang/String; = "IMCT_ICFATURAGUA"

.field public static final INDICADORFATURESGOTO:Ljava/lang/String; = "IMCT_ICFATURESGOTO"

.field public static final INDICADORIMOVCALCULADO:Ljava/lang/String; = "IMCT_ICIMOVCALCULADO"

.field public static final INDICADORIMOVELCONDOMINIO:Ljava/lang/String; = "IMCT_ICIMOVELCONDOMINIO"

.field public static final INDICADORIMOVELENVIADO:Ljava/lang/String; = "IMCT_ICIMOVENVIADO"

.field public static final INDICADORIMOVELIMPRESSO:Ljava/lang/String; = "IMCT_ICIMOVIMPRESSO"

.field public static final INDICADORIMOVELSAZONAL:Ljava/lang/String; = "IMCT_ICIMOVELSAZONAL"

.field public static final INDICADORNAOPERMITEIMPRESSAO:Ljava/lang/String; = "IMCT_ICNAOPERMITEIMPRESSAO"

.field public static final INDICADORONSUMOREALAGUA:Ljava/lang/String; = "IMCT_ICONSUMOREALAGUA"

.field public static final INDICADORPARALISARAGUA:Ljava/lang/String; = "IMCT_ICPARALISARAGUA"

.field public static final INDICADORPARALISARESGOTO:Ljava/lang/String; = "IMCT_ICPARALISARESGOTO"

.field public static final INDICADORRATEIONEGATIVO:Ljava/lang/String; = "IMCT_ICRATEIONEGATIVO"

.field public static final INDICADORRATEIOREALIZADO:Ljava/lang/String; = "IMCT_ICRATEIOREALIZADO"

.field public static final LIGACAO_AGUA_SITUACAO_INDICADOR_LEITURA_REAL:Ljava/lang/String; = "LAST_ICLEITURAREAL"

.field public static final LOCALIDADE:Ljava/lang/String; = "IMCT_DSLOCALIDADE"

.field public static final MENSAGEMCONTA1:Ljava/lang/String; = "IMCT_DSMENSAGEMCONTA1"

.field public static final MENSAGEMCONTA2:Ljava/lang/String; = "IMCT_DSMENSAGEMCONTA2"

.field public static final MENSAGEMCONTA3:Ljava/lang/String; = "IMCT_DSMENSAGEMCONTA3"

.field public static final MENSAGEMCONTA4:Ljava/lang/String; = "IMCT_DSMENSAGEMCONTA4"

.field public static final MENSAGEMCONTA5:Ljava/lang/String; = "IMCT_DSMENSAGEMCONTA5"

.field public static final MENSAGEMCONTAANORMALIDADE1:Ljava/lang/String; = "IMCT_DSMENSCONTAANOR1"

.field public static final MENSAGEMCONTAANORMALIDADE2:Ljava/lang/String; = "IMCT_DSMENSCONTAANOR2"

.field public static final MENSAGEMCONTAANORMALIDADE3:Ljava/lang/String; = "IMCT_DSMENSCONTAANOR3"

.field public static final NNCPFCNPJCLIENTECONTA:Ljava/lang/String; = "IMCT_NNCPFCNPJCLIENTECONTA"

.field public static final NNLOTE:Ljava/lang/String; = "IMCT_LOTE"

.field public static final NNSUBLOTE:Ljava/lang/String; = "IMCT_SUBLOTE"

.field public static final NOMEGERENCIA:Ljava/lang/String; = "IMCT_NMGERENCIA"

.field public static final NOMEUSUARIO:Ljava/lang/String; = "IMCT_NMCLIENTEUSUARIO"

.field public static final NUMCONSUMOAGUAMEDIDO:Ljava/lang/String; = "FTSH_NNCONSUMOAGUAMEDIDO"

.field public static final NUMCONSUMOAGUANAOMEDIDO:Ljava/lang/String; = "FTSH_NNCONSUMOAGUANAOMEDIDO"

.field public static final NUMEROCODBARRASDOCCOBRANCA:Ljava/lang/String; = "IMCT_NNCODBARRASDOCCOB"

.field public static final NUMEROCODIGOBARRAGUIAPAGAMENTO:Ljava/lang/String; = "GUIA_CODIGOBARRA"

.field public static final NUMEROCONMEDIOAGUA:Ljava/lang/String; = "IMCT_NNCONMEDIOAGUA"

.field public static final NUMEROCONMEDIOESGOTO:Ljava/lang/String; = "IMCT_NNCONMEDIOESGOTO"

.field public static final NUMEROCONSIMOREFALTOC:Ljava/lang/String; = "IMCT_NNCONSIMOREFAC"

.field public static final NUMEROCONSUMOMAXIMOEC:Ljava/lang/String; = "IMCT_NNCONSUMOMAXIMOEC"

.field public static final NUMEROCONSUMOMINAGUA:Ljava/lang/String; = "IMCT_NNCONSMINAGUA"

.field public static final NUMEROCONSUMOMINESGOTO:Ljava/lang/String; = "IMCT_NNCONSMINESGOTO"

.field public static final NUMEROCONSUMOMINIMOVEL:Ljava/lang/String; = "IMCT_NNCONSUMOMINIMOVEL"

.field public static final NUMEROCONSUMOPCALTERNATIVO:Ljava/lang/String; = "IMCT_NNCONSPCALTERNATIVO"

.field public static final NUMEROCONSUMOREFBAIXOC:Ljava/lang/String; = "IMCT_NNCONSUMOREFBC"

.field public static final NUMEROCONSUMOREFESTOUROC:Ljava/lang/String; = "IMCT_NNCONSUMOREFEC"

.field public static final NUMERODIASCORTEAGUA:Ljava/lang/String; = "IMCT_NNDIASCORTEAGUA"

.field public static final NUMEROFONEDDD:Ljava/lang/String; = "IMCT_NNFONEDDD"

.field public static final NUMEROIMOVEL:Ljava/lang/String; = "IMCT_NNIMOVEL"

.field public static final NUMEROINSCRICAO:Ljava/lang/String; = "IMCT_NMINSCRICAO"

.field public static final NUMEROQUADRA:Ljava/lang/String; = "IMCT_NNQUADRA"

.field public static final NUMEROSEQUENCIALROTA:Ljava/lang/String; = "IMCT_NNSEQUENCIALROTA"

.field public static final NUMEROVEZESMEDIAALTOCONSUMO:Ljava/lang/String; = "IMCT_NNVEZESMEDIAALTOCONSUMO"

.field public static final NUMEROVEZESMEDIAESTOURO:Ljava/lang/String; = "IMCT_NNVEZESMEDIAESTOURO"

.field public static final NUMVOLUMEESGOTOMEDIDO:Ljava/lang/String; = "FTSH_NNVOLUMEESGOTOMEDIDO"

.field public static final NUMVOLUMEESGOTONAOMEDIDO:Ljava/lang/String; = "FTSH_NNVOLUMEESGOTONAOMEDIDO"

.field public static final PERCALTERNATIVOESGOTO:Ljava/lang/String; = "IMCT_PCALTERNATIVOESGOTO"

.field public static final PERCENTUALCOLETAESGOTO:Ljava/lang/String; = "IMCT_PCCOLETAESGOTO"

.field public static final PERCENTUALESGOTO:Ljava/lang/String; = "IMCT_PCESGOTO"

.field public static final PERCENTUALMEDIABAIXOCONSUMO:Ljava/lang/String; = "IMCT_PCMEDIABAIXOCONSUMO"

.field public static final PERFIL:Ljava/lang/String; = "IPER_ID"

.field public static final POCO:Ljava/lang/String; = "POCO_ID"

.field public static final POSICAO:Ljava/lang/String; = "IMCT_NNPOSICAOIMOVEL"

.field public static final POSICAOIMOVELCONDOMINIO:Ljava/lang/String; = "IMCT_NNPOSICAOIMOVELCONDOMINIO"

.field public static final POSICAO_ORIGINAL:Ljava/lang/String; = "IMCT_NNPOSICAOIMOVEL_ORIGINAL"

.field public static final QUANTIDADEIMPRESSAO:Ljava/lang/String; = "IMCT_QTDIMPRESSAO"

.field public static final RESPONSAVEL:Ljava/lang/String; = "IMCT_NMCLIENTERESPONSAVEL"

.field public static final SITUACAOLIGACAOAGUA:Ljava/lang/String; = "LAST_ID"

.field public static final SITUACAOLIGACAOESGOTO:Ljava/lang/String; = "LEST_ID"

.field public static final TIPOCALCULOTARIFA:Ljava/lang/String; = "IMCT_IDTARIFATIPOCALCULO"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "IMCT_TMULTIMAALTERACAO"

.field public static final VALORGUIAPAGAMENTOLIXO:Ljava/lang/String; = "GUIA_VALOR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
