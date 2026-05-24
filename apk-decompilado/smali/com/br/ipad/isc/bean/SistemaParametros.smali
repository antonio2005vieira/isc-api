.class public Lcom/br/ipad/isc/bean/SistemaParametros;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "SistemaParametros.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;,
        Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametros;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static instancia:Lcom/br/ipad/isc/bean/SistemaParametros; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cnpjEmpresa:Ljava/lang/String;

.field private codigoBancoFichaCompensacao:Ljava/lang/String;

.field private codigoEmpresaFebraban:Ljava/lang/String;

.field private codigoMoedaFichaCompensacao:Ljava/lang/Integer;

.field private contrasteConta:Ljava/lang/Integer;

.field private dataAjusteLeitura:Ljava/util/Date;

.field private dataFim:Ljava/util/Date;

.field private dataInicio:Ljava/util/Date;

.field private dataProximaLeitura:Ljava/util/Date;

.field private dataReferenciaArrecadacao:Ljava/util/Date;

.field private decrementoMaximoConsumoEconomia:Ljava/lang/Integer;

.field private descricaoLogradouroFiltrado:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private idImovelCondominio:Ljava/lang/Integer;

.field private idImovelSelecionado:Ljava/lang/Integer;

.field private incrementoMaximoConsumoEconomia:Ljava/lang/Integer;

.field private indcBloquearReemissaoConta:Ljava/lang/Integer;

.field private indcTarifaCatgoria:Ljava/lang/Integer;

.field private indicadorAjusteConsumo:Ljava/lang/Integer;

.field private indicadorAnormalidadeImovelCortadoComConsumo:Ljava/lang/Integer;

.field private indicadorArmazenarCoordenadas:Ljava/lang/Integer;

.field private indicadorBancoCarregado:Ljava/lang/Integer;

.field private indicadorCalcularConsumoAcumulado:Ljava/lang/Integer;

.field private indicadorCalculoAutomatico:Ljava/lang/Integer;

.field private indicadorCarteira17:Ljava/lang/Integer;

.field private indicadorDesconsiderarRateioEsgoto:Ljava/lang/Integer;

.field private indicadorExigirLocalEntregaContaISC:Ljava/lang/Integer;

.field private indicadorInverterRoteiroFiltrado:Ljava/lang/Integer;

.field private indicadorLidoNaoLidoFiltrado:Ljava/lang/Integer;

.field private indicadorModeloImpressora:Ljava/lang/Integer;

.field private indicadorParImparFiltrado:Ljava/lang/Integer;

.field private indicadorPercentualColetaEsgoto:Ljava/lang/Integer;

.field private indicadorRateioAreaComumImovelNaoFat:Ljava/lang/Integer;

.field private indicadorRotaMarcacao:Ljava/lang/Integer;

.field private indicadorRotaMarcacaoAtiva:Ljava/lang/Integer;

.field private indicadorSistemaLeitura:Ljava/lang/Integer;

.field private indicadorTransmissaoOffline:Ljava/lang/Integer;

.field private inscricaoEstadualEmpresa:Ljava/lang/String;

.field private login:Ljava/lang/String;

.field private maxDiasNovaLigacao:Ljava/lang/Integer;

.field private moduloVerificadorCodigoBarras:Ljava/lang/Integer;

.field private numeroConvenioCarteira17:Ljava/lang/String;

.field private percentToleranciaRateio:Ljava/math/BigDecimal;

.field private qtdDiasAjusteConsumo:Ljava/lang/Integer;

.field private qtdImoveis:Ljava/lang/Integer;

.field private qtdImovelCondominio:Ljava/lang/Integer;

.field private senha:Ljava/lang/String;

.field private telefone0800:Ljava/lang/String;

.field private ultimaAlteracao:Ljava/util/Date;

.field private valorContaFichaCompensacao:Ljava/math/BigDecimal;

.field private valorMinimEmissaoConta:Ljava/math/BigDecimal;

.field private versaoCelular:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PARM_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PARM_CDEMPRESAFEBRABAN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PARM_DTARRECADACAO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PARM_NNTELEFONE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PARM_NNCNPJEMPRESA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PARM_NNINSCRICAOESTADUAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PARM_VLMINIMOEMISSAOCONTA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PARM_PCTOLERANCIARATEIO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PARM_NNCONSRATEIODECREMENTOMAX"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PARM_NNCONSRATEIOINCREMENTOMAX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PARM_ICTARIFACATEGORIA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PARM_NMLOGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PARM_NMSENHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ROTA_DTLEITURAAJUSTE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ROTA_ICCONSUMOAJUSTE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ROTA_ICTRANSMISSAOOFFLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PARM_NMVERSAOCELULAR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PARM_ICBLOQUEIOCONTAMOBILE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PARM_ICROTAMARCACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PARM_NNDIASCONSUMOAJUSTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PARM_NNMODULODIGITOVERIF"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PARM_DTINICIOBLOQUEIO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "PARM_DTFIMBLOQUEIO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PARM_ICPERCENTUALCOLETAESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PARM_ICDESCRATEIOESGOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PARM_IDIMOVSELECIONADO"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PARM_QTIMOVEIS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PARM_NNMAXDIASNOVALIGACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PARM_QTIMOVELCONDOMINIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PARM_IDIMOVELCONDOMINIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PARM_ICBANCOCARREGADO"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PARM_ICROTAMARCACAOATIVA"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PARM_ICARMAZENARCOORDENADAS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PARM_ICRATEIOAREACOUMIMOVNFAT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PARM_ICSISTEMALEITURA"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "PARM_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "PARM_NNCONTRASTECONTA"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "PARM_ICCALCULOAUTOMATICO"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "PARM_DATAPROXIMALEITURA"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "PARM_ICANORIMOVCORTCOMCONSUMO"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "PARM_ICEXIGIRLOCALENTREGAISC"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "PARM_NNCONVENIOCARTEIRA17"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "PARM_NNCODIGOFICHACOMPENSACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "PARM_NNMOEDAFICHACOMPENSACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "PARM_VLFICHACOMPENSACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "PARM_ICCARTEIRA17"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "PARM_DESCRICAOLOGRADOURO"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PARM_INDICADORPARIMPAR"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "PARM_INDICADORLIDONAOLIDO"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "PARM_INDICADORINVERTERROTEIRO"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "PARM_INDICADORCONSUMOACUMULADO"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "PARM_SELECIONARIMPRESSORA"

    aput-object v2, v0, v1

    .line 473
    sput-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;
    .locals 1

    .line 34
    sget-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->instancia:Lcom/br/ipad/isc/bean/SistemaParametros;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->instancia:Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 37
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->instancia:Lcom/br/ipad/isc/bean/SistemaParametros;

    return-object v0
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 561
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoEmpresaFebraban(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 563
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataReferenciaArrecadacao(Ljava/util/Date;)V

    const/4 v1, 0x3

    .line 565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setTelefone0800(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 566
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCnpjEmpresa(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 567
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setInscricaoEstadualEmpresa(Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 568
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setValorMinimEmissaoConta(Ljava/math/BigDecimal;)V

    :cond_0
    const/4 v1, 0x7

    .line 572
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setPercentToleranciaRateio(Ljava/math/BigDecimal;)V

    :cond_1
    const/16 v1, 0x8

    .line 576
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDecrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V

    :cond_2
    const/16 v1, 0x9

    .line 579
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIncrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V

    :cond_3
    const/16 v1, 0xa

    .line 582
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 583
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndcTarifaCatgoria(Ljava/lang/Integer;)V

    :cond_4
    const/16 v1, 0xb

    .line 585
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setLogin(Ljava/lang/String;)V

    const/16 v1, 0xc

    .line 586
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setSenha(Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 588
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataAjusteLeitura(Ljava/util/Date;)V

    const/16 v1, 0xe

    .line 590
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 591
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorAjusteConsumo(Ljava/lang/Integer;)V

    :cond_5
    const/16 v1, 0xf

    .line 593
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 594
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorTransmissaoOffline(Ljava/lang/Integer;)V

    :cond_6
    const/16 v1, 0x10

    .line 596
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setVersaoCelular(Ljava/lang/String;)V

    const/16 v1, 0x11

    .line 597
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    .line 598
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndcBloquearReemissaoConta(Ljava/lang/Integer;)V

    :cond_7
    const/16 v1, 0x12

    .line 600
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    .line 601
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorRotaMarcacao(Ljava/lang/Integer;)V

    :cond_8
    const/16 v1, 0x13

    .line 603
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x13

    .line 604
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdDiasAjusteConsumo(Ljava/lang/Integer;)V

    :cond_9
    const/16 v1, 0x14

    .line 606
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    .line 607
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setModuloVerificadorCodigoBarras(Ljava/lang/Integer;)V

    :cond_a
    const/16 v1, 0x15

    .line 610
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataInicio(Ljava/util/Date;)V

    const/16 v1, 0x16

    .line 612
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataFim(Ljava/util/Date;)V

    const/16 v1, 0x17

    .line 614
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x17

    .line 615
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorPercentualColetaEsgoto(Ljava/lang/Integer;)V

    .line 617
    :cond_b
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setUltimaAlteracao(Ljava/lang/String;)V

    const/16 v1, 0x18

    .line 620
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x18

    .line 621
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorDesconsiderarRateioEsgoto(Ljava/lang/Integer;)V

    :cond_c
    const/16 v1, 0x19

    .line 624
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 625
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorArmazenarCoordenadas(Ljava/lang/Integer;)V

    :cond_d
    const/16 v1, 0x1a

    .line 628
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 629
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorRateioAreaComumImovelNaoFat(Ljava/lang/Integer;)V

    :cond_e
    const/16 v1, 0x1b

    .line 632
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 633
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorSistemaLeitura(Ljava/lang/Integer;)V

    goto :goto_0

    .line 635
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorSistemaLeitura(Ljava/lang/Integer;)V

    :goto_0
    const/16 v0, 0x1c

    .line 638
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 639
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setMaxDiasNovaLigacao(Ljava/lang/Integer;)V

    :cond_10
    const/16 v0, 0x1d

    .line 642
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 643
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorAnormalidadeImovelCortadoComConsumo(Ljava/lang/Integer;)V

    goto :goto_1

    .line 645
    :cond_11
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorAnormalidadeImovelCortadoComConsumo(Ljava/lang/Integer;)V

    :goto_1
    const/16 v0, 0x1e

    .line 648
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 649
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorExigirLocalEntregaContaISC(Ljava/lang/Integer;)V

    goto :goto_2

    .line 651
    :cond_12
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorExigirLocalEntregaContaISC(Ljava/lang/Integer;)V

    :goto_2
    const/16 v0, 0x1f

    .line 654
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setNumeroConvenioCarteira17(Ljava/lang/String;)V

    :cond_13
    const/16 v0, 0x20

    .line 658
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 659
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoBancoFichaCompensacao(Ljava/lang/String;)V

    :cond_14
    const/16 v0, 0x21

    .line 662
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 663
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoMoedaFichaCompensacao(Ljava/lang/Integer;)V

    :cond_15
    const/16 v0, 0x22

    .line 666
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 667
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setValorContaFichaCompensacao(Ljava/math/BigDecimal;)V

    :cond_16
    const/16 v0, 0x23

    .line 670
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 671
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCarteira17(Ljava/lang/Integer;)V

    goto :goto_3

    .line 673
    :cond_17
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCarteira17(Ljava/lang/Integer;)V

    :goto_3
    const/16 v0, 0x24

    .line 676
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 677
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertStrToDataArquivo(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataProximaLeitura(Ljava/util/Date;)V

    :cond_18
    const/16 v0, 0x25

    .line 680
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 681
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCalcularConsumoAcumulado(Ljava/lang/Integer;)V

    .line 685
    :cond_19
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorModeloImpressora(Ljava/lang/Integer;)V

    .line 687
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCalculoAutomatico(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIdImovelSelecionado(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 689
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setContrasteConta(Ljava/lang/Integer;)V

    return-void
.end method

.method public static resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->instancia:Lcom/br/ipad/isc/bean/SistemaParametros;

    .line 41
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->instancia:Lcom/br/ipad/isc/bean/SistemaParametros;

    return-void
.end method


# virtual methods
.method public getCnpjEmpresa()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->cnpjEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoBancoFichaCompensacao()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoBancoFichaCompensacao:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoEmpresaFebraban()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoEmpresaFebraban:Ljava/lang/String;

    return-object v0
.end method

.method public getCodigoMoedaFichaCompensacao()Ljava/lang/Integer;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoMoedaFichaCompensacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 495
    sget-object v0, Lcom/br/ipad/isc/bean/SistemaParametros;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getContrasteConta()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->contrasteConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDataAjusteLeitura()Ljava/util/Date;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataAjusteLeitura:Ljava/util/Date;

    return-object v0
.end method

.method public getDataFim()Ljava/util/Date;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataFim:Ljava/util/Date;

    return-object v0
.end method

.method public getDataInicio()Ljava/util/Date;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataInicio:Ljava/util/Date;

    return-object v0
.end method

.method public getDataProximaLeitura()Ljava/util/Date;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataProximaLeitura:Ljava/util/Date;

    return-object v0
.end method

.method public getDataReferenciaArrecadacao()Ljava/util/Date;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataReferenciaArrecadacao:Ljava/util/Date;

    return-object v0
.end method

.method public getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->decrementoMaximoConsumoEconomia:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDescricaoLogradouroFiltrado()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->descricaoLogradouroFiltrado:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdImovelCondominio()Ljava/lang/Integer;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->idImovelCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdImovelSelecionado()Ljava/lang/Integer;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->idImovelSelecionado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->incrementoMaximoConsumoEconomia:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcBloquearReemissaoConta()Ljava/lang/Integer;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indcBloquearReemissaoConta:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndcTarifaCatgoria()Ljava/lang/Integer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indcTarifaCatgoria:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorAjusteConsumo()Ljava/lang/Integer;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorAjusteConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorAnormalidadeImovelCortadoComConsumo()Ljava/lang/Integer;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorAnormalidadeImovelCortadoComConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorArmazenarCoordenadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorBancoCarregado()Ljava/lang/Integer;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorBancoCarregado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorCalcularConsumoAcumulado()Ljava/lang/Integer;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCalcularConsumoAcumulado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorCalculoAutomatico()Ljava/lang/Integer;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCalculoAutomatico:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorCarteira17()Ljava/lang/Integer;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCarteira17:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorDesconsiderarRateioEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorExigirLocalEntregaContaISC()Ljava/lang/Integer;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorExigirLocalEntregaContaISC:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorInverterRoteiroFiltrado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorLidoNaoLidoFiltrado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorModeloImpressora()Ljava/lang/Integer;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorModeloImpressora:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorParImparFiltrado()Ljava/lang/Integer;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorParImparFiltrado:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorPercentualColetaEsgoto:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRateioAreaComumImovelNaoFat:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorRotaMarcacao()Ljava/lang/Integer;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRotaMarcacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRotaMarcacaoAtiva:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorSistemaLeitura()Ljava/lang/Integer;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorSistemaLeitura:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIndicadorTransmissaoOffline()Ljava/lang/Integer;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorTransmissaoOffline:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInscricaoEstadualEmpresa()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->inscricaoEstadualEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->login:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDiasNovaLigacao()Ljava/lang/Integer;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->maxDiasNovaLigacao:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuloVerificadorCodigoBarras()Ljava/lang/Integer;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->moduloVerificadorCodigoBarras:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "sistema_parametros"

    return-object v0
.end method

.method public getNumeroConvenioCarteira17()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->numeroConvenioCarteira17:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentToleranciaRateio()Ljava/math/BigDecimal;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->percentToleranciaRateio:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getQtdDiasAjusteConsumo()Ljava/lang/Integer;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdDiasAjusteConsumo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQtdImoveis()Ljava/lang/Integer;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdImoveis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQtdImovelCondominio()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdImovelCondominio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSenha()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->senha:Ljava/lang/String;

    return-object v0
.end method

.method public getTelefone0800()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->telefone0800:Ljava/lang/String;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public getValorContaFichaCompensacao()Ljava/math/BigDecimal;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->valorContaFichaCompensacao:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getValorMinimEmissaoConta()Ljava/math/BigDecimal;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->valorMinimEmissaoConta:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getVersaoCelular()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->versaoCelular:Ljava/lang/String;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 77
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/SistemaParametros;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 869
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PARM_ID"

    .line 870
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "PARM_ICBLOQUEIOCONTAMOBILE"

    .line 871
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "PARM_NNCNPJEMPRESA"

    .line 872
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "PARM_CDEMPRESAFEBRABAN"

    .line 873
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "PARM_DTARRECADACAO"

    .line 874
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "PARM_DTFIMBLOQUEIO"

    .line 875
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "PARM_DTINICIOBLOQUEIO"

    .line 876
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "ROTA_DTLEITURAAJUSTE"

    .line 877
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "PARM_NNCONSRATEIODECREMENTOMAX"

    .line 878
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "PARM_NNCONSRATEIOINCREMENTOMAX"

    .line 879
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "PARM_ICPERCENTUALCOLETAESGOTO"

    move-object/from16 v16, v13

    .line 880
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v17, v13

    const-string v13, "ROTA_ICCONSUMOAJUSTE"

    move-object/from16 v18, v15

    .line 881
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v13

    const-string v13, "PARM_ICTARIFACATEGORIA"

    move/from16 v20, v15

    .line 882
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v21, v13

    const-string v13, "PARM_ICROTAMARCACAO"

    move/from16 v22, v15

    .line 883
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v23, v13

    const-string v13, "ROTA_ICTRANSMISSAOOFFLINE"

    move/from16 v24, v15

    .line 884
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v25, v13

    const-string v13, "PARM_NNINSCRICAOESTADUAL"

    .line 885
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v26, v13

    const-string v13, "PARM_NMLOGIN"

    .line 886
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v27, v13

    const-string v13, "PARM_VLMINIMOEMISSAOCONTA"

    move/from16 v28, v15

    .line 887
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v29, v13

    const-string v13, "PARM_NNMODULODIGITOVERIF"

    move/from16 v30, v15

    .line 888
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v31, v13

    const-string v13, "PARM_PCTOLERANCIARATEIO"

    move/from16 v32, v15

    .line 889
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v33, v13

    const-string v13, "PARM_NNDIASCONSUMOAJUSTE"

    move/from16 v34, v15

    .line 890
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v35, v13

    const-string v13, "PARM_NMSENHA"

    .line 891
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v36, v13

    const-string v13, "PARM_NNTELEFONE"

    .line 892
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v37, v13

    const-string v13, "PARM_NMVERSAOCELULAR"

    .line 893
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v38, v13

    const-string v13, "PARM_ICDESCRATEIOESGOTO"

    move/from16 v39, v15

    .line 894
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v40, v13

    const-string v13, "PARM_IDIMOVSELECIONADO"

    move/from16 v41, v15

    .line 895
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v42, v13

    const-string v13, "PARM_QTIMOVEIS"

    .line 896
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v43, v13

    const-string v13, "PARM_NNMAXDIASNOVALIGACAO"

    .line 898
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v44, v13

    const-string v13, "PARM_QTIMOVELCONDOMINIO"

    .line 899
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v45, v13

    const-string v13, "PARM_IDIMOVELCONDOMINIO"

    .line 900
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v46, v13

    const-string v13, "PARM_ICBANCOCARREGADO"

    .line 901
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v47, v13

    const-string v13, "PARM_ICROTAMARCACAOATIVA"

    .line 902
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v48, v13

    const-string v13, "PARM_ICARMAZENARCOORDENADAS"

    .line 903
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v49, v13

    const-string v13, "PARM_ICRATEIOAREACOUMIMOVNFAT"

    .line 904
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v50, v13

    const-string v13, "PARM_ICSISTEMALEITURA"

    .line 905
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v51, v13

    const-string v13, "PARM_TMULTIMAALTERACAO"

    .line 907
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v52, v13

    const-string v13, "PARM_NNCONTRASTECONTA"

    .line 908
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v53, v13

    const-string v13, "PARM_ICCALCULOAUTOMATICO"

    .line 909
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v54, v13

    const-string v13, "PARM_DATAPROXIMALEITURA"

    .line 910
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v55, v13

    const-string v13, "PARM_ICANORIMOVCORTCOMCONSUMO"

    .line 911
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v56, v13

    const-string v13, "PARM_ICEXIGIRLOCALENTREGAISC"

    .line 912
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v57, v13

    const-string v13, "PARM_NNCONVENIOCARTEIRA17"

    .line 913
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v58, v13

    const-string v13, "PARM_NNCODIGOFICHACOMPENSACAO"

    .line 914
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v59, v13

    const-string v13, "PARM_NNMOEDAFICHACOMPENSACAO"

    .line 915
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v60, v13

    const-string v13, "PARM_VLFICHACOMPENSACAO"

    move/from16 v61, v15

    .line 916
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v62, v13

    const-string v13, "PARM_ICCARTEIRA17"

    .line 917
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v63, v13

    const-string v13, "PARM_DESCRICAOLOGRADOURO"

    .line 918
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v64, v13

    const-string v13, "PARM_INDICADORPARIMPAR"

    move/from16 v65, v15

    .line 919
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v66, v13

    const-string v13, "PARM_INDICADORLIDONAOLIDO"

    move/from16 v67, v15

    .line 920
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v68, v13

    const-string v13, "PARM_INDICADORINVERTERROTEIRO"

    move/from16 v69, v15

    .line 921
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v70, v13

    const-string v13, "PARM_INDICADORCONSUMOACUMULADO"

    .line 922
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v71, v15

    const-string v15, "PARM_SELECIONARIMPRESSORA"

    .line 923
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v72, v15

    .line 926
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v73, v15

    .line 928
    :goto_0
    new-instance v15, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>()V

    .line 930
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v74

    move/from16 v75, v1

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setId(Ljava/lang/Integer;)V

    .line 931
    invoke-static {v0, v2, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndcBloquearReemissaoConta(Ljava/lang/Integer;)V

    .line 932
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCnpjEmpresa(Ljava/lang/String;)V

    .line 933
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoEmpresaFebraban(Ljava/lang/String;)V

    .line 935
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataReferenciaArrecadacao(Ljava/util/Date;)V

    .line 936
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataFim(Ljava/util/Date;)V

    .line 937
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataInicio(Ljava/util/Date;)V

    .line 939
    invoke-static {v0, v9, v10}, Lcom/br/ipad/isc/util/Util;->getDataBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataAjusteLeitura(Ljava/util/Date;)V

    .line 941
    invoke-static {v0, v11, v12}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDecrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    .line 942
    invoke-static {v0, v1, v14}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIncrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V

    move/from16 v2, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v18

    move/from16 v18, v3

    .line 943
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorPercentualColetaEsgoto(Ljava/lang/Integer;)V

    move/from16 v3, v20

    move/from16 v20, v2

    move-object/from16 v76, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v76

    .line 944
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorAjusteConsumo(Ljava/lang/Integer;)V

    move/from16 v2, v22

    move/from16 v22, v3

    move-object/from16 v76, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v76

    .line 945
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndcTarifaCatgoria(Ljava/lang/Integer;)V

    move/from16 v3, v24

    move/from16 v24, v2

    move-object/from16 v76, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v76

    .line 946
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorRotaMarcacao(Ljava/lang/Integer;)V

    move/from16 v2, v28

    move/from16 v28, v3

    move-object/from16 v76, v25

    move-object/from16 v25, v1

    move-object/from16 v1, v76

    .line 947
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorTransmissaoOffline(Ljava/lang/Integer;)V

    move/from16 v3, v26

    move-object/from16 v26, v1

    .line 948
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setInscricaoEstadualEmpresa(Ljava/lang/String;)V

    move/from16 v1, v27

    move/from16 v27, v2

    .line 949
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setLogin(Ljava/lang/String;)V

    move/from16 v2, v30

    move/from16 v30, v3

    move-object/from16 v76, v29

    move/from16 v29, v1

    move-object/from16 v1, v76

    .line 950
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setValorMinimEmissaoConta(Ljava/math/BigDecimal;)V

    move/from16 v3, v32

    move/from16 v32, v2

    move-object/from16 v76, v31

    move-object/from16 v31, v1

    move-object/from16 v1, v76

    .line 951
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setModuloVerificadorCodigoBarras(Ljava/lang/Integer;)V

    move/from16 v2, v34

    move/from16 v34, v3

    move-object/from16 v76, v33

    move-object/from16 v33, v1

    move-object/from16 v1, v76

    .line 952
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setPercentToleranciaRateio(Ljava/math/BigDecimal;)V

    move/from16 v3, v39

    move/from16 v39, v2

    move-object/from16 v76, v35

    move-object/from16 v35, v1

    move-object/from16 v1, v76

    .line 953
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdDiasAjusteConsumo(Ljava/lang/Integer;)V

    move/from16 v2, v36

    move-object/from16 v36, v1

    .line 954
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setSenha(Ljava/lang/String;)V

    move/from16 v1, v37

    move/from16 v37, v2

    .line 955
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setTelefone0800(Ljava/lang/String;)V

    move/from16 v2, v38

    move/from16 v38, v1

    .line 956
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setVersaoCelular(Ljava/lang/String;)V

    move/from16 v1, v41

    move/from16 v41, v3

    move-object/from16 v76, v40

    move/from16 v40, v2

    move-object/from16 v2, v76

    .line 957
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorDesconsiderarRateioEsgoto(Ljava/lang/Integer;)V

    move/from16 v3, v61

    move-object/from16 v61, v2

    move-object/from16 v76, v42

    move/from16 v42, v1

    move-object/from16 v1, v76

    .line 958
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIdImovelSelecionado(Ljava/lang/Integer;)V

    move/from16 v2, v43

    .line 959
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move-object/from16 v74, v1

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdImoveis(Ljava/lang/Integer;)V

    move/from16 v1, v44

    .line 961
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setMaxDiasNovaLigacao(Ljava/lang/Integer;)V

    move/from16 v1, v45

    .line 962
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setQtdImovelCondominio(Ljava/lang/Integer;)V

    move/from16 v1, v46

    .line 963
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIdImovelCondominio(Ljava/lang/Integer;)V

    move/from16 v1, v47

    .line 964
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorBancoCarregado(Ljava/lang/Integer;)V

    move/from16 v1, v48

    .line 965
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)V

    move/from16 v1, v49

    .line 966
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorArmazenarCoordenadas(Ljava/lang/Integer;)V

    move/from16 v1, v50

    .line 967
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorRateioAreaComumImovelNaoFat(Ljava/lang/Integer;)V

    move/from16 v1, v51

    .line 968
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorSistemaLeitura(Ljava/lang/Integer;)V

    move/from16 v43, v2

    move/from16 v1, v52

    .line 970
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setUltimaAlteracao(Ljava/lang/String;)V

    move/from16 v2, v53

    .line 971
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    move/from16 v53, v1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setContrasteConta(Ljava/lang/Integer;)V

    move/from16 v1, v54

    .line 972
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCalculoAutomatico(Ljava/lang/Integer;)V

    move/from16 v1, v55

    .line 973
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDataProximaLeitura(Ljava/util/Date;)V

    move/from16 v1, v56

    .line 974
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorAnormalidadeImovelCortadoComConsumo(Ljava/lang/Integer;)V

    move/from16 v1, v57

    .line 975
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorExigirLocalEntregaContaISC(Ljava/lang/Integer;)V

    move/from16 v52, v2

    move/from16 v1, v58

    .line 976
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setNumeroConvenioCarteira17(Ljava/lang/String;)V

    move/from16 v2, v59

    .line 977
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoBancoFichaCompensacao(Ljava/lang/String;)V

    move/from16 v1, v60

    .line 978
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setCodigoMoedaFichaCompensacao(Ljava/lang/Integer;)V

    move/from16 v59, v2

    move-object/from16 v2, v62

    move/from16 v1, v65

    move/from16 v62, v3

    .line 979
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setValorContaFichaCompensacao(Ljava/math/BigDecimal;)V

    move/from16 v3, v63

    .line 980
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCarteira17(Ljava/lang/Integer;)V

    .line 981
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorCalcularConsumoAcumulado(Ljava/lang/Integer;)V

    move-object/from16 v63, v2

    move/from16 v1, v64

    .line 982
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setDescricaoLogradouroFiltrado(Ljava/lang/String;)V

    move-object/from16 v1, v66

    move/from16 v2, v67

    move/from16 v66, v3

    .line 983
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorParImparFiltrado(Ljava/lang/Integer;)V

    move-object/from16 v67, v1

    move-object/from16 v1, v68

    move/from16 v3, v69

    move/from16 v68, v2

    .line 984
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorLidoNaoLidoFiltrado(Ljava/lang/Integer;)V

    move-object/from16 v69, v1

    move-object/from16 v1, v70

    move/from16 v2, v71

    move/from16 v70, v3

    .line 985
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorInverterRoteiroFiltrado(Ljava/lang/Integer;)V

    move/from16 v3, v72

    .line 986
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->setIndicadorModeloImpressora(Ljava/lang/Integer;)V

    move-object/from16 v0, v73

    .line 988
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v73, v0

    move/from16 v71, v2

    move/from16 v72, v3

    move-object/from16 v2, v16

    move-object/from16 v16, v17

    move/from16 v3, v18

    move-object/from16 v18, v19

    move/from16 v17, v20

    move-object/from16 v19, v21

    move/from16 v20, v22

    move-object/from16 v21, v23

    move/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v25, v26

    move/from16 v24, v28

    move/from16 v26, v30

    move/from16 v30, v32

    move/from16 v32, v34

    move/from16 v34, v39

    move/from16 v39, v41

    move/from16 v41, v42

    move-object/from16 v42, v74

    move-object/from16 v0, p1

    move/from16 v28, v27

    move/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v36

    move/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, v40

    move-object/from16 v40, v61

    move/from16 v61, v62

    move-object/from16 v62, v63

    move/from16 v63, v66

    move-object/from16 v66, v67

    move/from16 v67, v68

    move-object/from16 v68, v69

    move/from16 v69, v70

    move-object/from16 v70, v1

    move/from16 v1, v75

    move/from16 v76, v53

    move/from16 v53, v52

    move/from16 v52, v76

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_1
    return-object v15
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 776
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 778
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCnpjEmpresa()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NNCNPJEMPRESA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_CDEMPRESAFEBRABAN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataReferenciaArrecadacao()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDataToStrValues(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_DTARRECADACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataFim()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDataToStrValues(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_DTFIMBLOQUEIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataInicio()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDataToStrValues(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_DTINICIOBLOQUEIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataAjusteLeitura()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataAjusteLeitura()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ROTA_DTLEITURAAJUSTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDecrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNCONSRATEIODECREMENTOMAX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIncrementoMaximoConsumoEconomia()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNCONSRATEIOINCREMENTOMAX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorPercentualColetaEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICPERCENTUALCOLETAESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcBloquearReemissaoConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICBLOQUEIOCONTAMOBILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorAjusteConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_ICCONSUMOAJUSTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICTARIFACATEGORIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICROTAMARCACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ROTA_ICTRANSMISSAOOFFLINE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInscricaoEstadualEmpresa()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NNINSCRICAOESTADUAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getLogin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NMLOGIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getValorMinimEmissaoConta()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getValorMinimEmissaoConta()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_VLMINIMOEMISSAOCONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getModuloVerificadorCodigoBarras()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNMODULODIGITOVERIF"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getPercentToleranciaRateio()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 804
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getPercentToleranciaRateio()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_PCTOLERANCIARATEIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdDiasAjusteConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNDIASCONSUMOAJUSTE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getSenha()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NMSENHA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getTelefone0800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NNTELEFONE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getVersaoCelular()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NMVERSAOCELULAR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorDesconsiderarRateioEsgoto()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICDESCRATEIOESGOTO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 813
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelSelecionado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_IDIMOVSELECIONADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_QTIMOVEIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getMaxDiasNovaLigacao()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 818
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getMaxDiasNovaLigacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNMAXDIASNOVALIGACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_QTIMOVELCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_IDIMOVELCONDOMINIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorArmazenarCoordenadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICARMAZENARCOORDENADAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRateioAreaComumImovelNaoFat()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICRATEIOAREACOUMIMOVNFAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorSistemaLeitura()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICSISTEMALEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_TMULTIMAALTERACAO"

    .line 828
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorCalculoAutomatico()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICCALCULOAUTOMATICO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getContrasteConta()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNCONTRASTECONTA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDataProximaLeitura()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_DATAPROXIMALEITURA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorAnormalidadeImovelCortadoComConsumo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICANORIMOVCORTCOMCONSUMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorExigirLocalEntregaContaISC()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICEXIGIRLOCALENTREGAISC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNumeroConvenioCarteira17()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 837
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getNumeroConvenioCarteira17()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NNCONVENIOCARTEIRA17"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_5
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoBancoFichaCompensacao()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 840
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoBancoFichaCompensacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_NNCODIGOFICHACOMPENSACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_6
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoMoedaFichaCompensacao()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 843
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoMoedaFichaCompensacao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_NNMOEDAFICHACOMPENSACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    :cond_7
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getValorContaFichaCompensacao()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 846
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getValorContaFichaCompensacao()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_VLFICHACOMPENSACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorCalcularConsumoAcumulado()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 850
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorCalcularConsumoAcumulado()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_INDICADORCONSUMOACUMULADO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_9
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorCarteira17()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_ICCARTEIRA17"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getDescricaoLogradouroFiltrado()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_DESCRICAOLOGRADOURO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorParImparFiltrado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_INDICADORPARIMPAR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorLidoNaoLidoFiltrado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_INDICADORLIDONAOLIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorInverterRoteiroFiltrado()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PARM_INDICADORINVERTERROTEIRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 859
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorModeloImpressora()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARM_SELECIONARIMPRESSORA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public setCnpjEmpresa(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->cnpjEmpresa:Ljava/lang/String;

    return-void
.end method

.method public setCodigoBancoFichaCompensacao(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoBancoFichaCompensacao:Ljava/lang/String;

    return-void
.end method

.method public setCodigoEmpresaFebraban(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoEmpresaFebraban:Ljava/lang/String;

    return-void
.end method

.method public setCodigoMoedaFichaCompensacao(Ljava/lang/Integer;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->codigoMoedaFichaCompensacao:Ljava/lang/Integer;

    return-void
.end method

.method public setContrasteConta(Ljava/lang/Integer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->contrasteConta:Ljava/lang/Integer;

    return-void
.end method

.method public setDataAjusteLeitura(Ljava/util/Date;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataAjusteLeitura:Ljava/util/Date;

    return-void
.end method

.method public setDataFim(Ljava/util/Date;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataFim:Ljava/util/Date;

    return-void
.end method

.method public setDataInicio(Ljava/util/Date;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataInicio:Ljava/util/Date;

    return-void
.end method

.method public setDataProximaLeitura(Ljava/util/Date;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataProximaLeitura:Ljava/util/Date;

    return-void
.end method

.method public setDataReferenciaArrecadacao(Ljava/util/Date;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->dataReferenciaArrecadacao:Ljava/util/Date;

    return-void
.end method

.method public setDecrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->decrementoMaximoConsumoEconomia:Ljava/lang/Integer;

    return-void
.end method

.method public setDescricaoLogradouroFiltrado(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->descricaoLogradouroFiltrado:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdImovelCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->idImovelCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setIdImovelSelecionado(Ljava/lang/Integer;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->idImovelSelecionado:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIncrementoMaximoConsumoEconomia(Ljava/lang/Integer;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->incrementoMaximoConsumoEconomia:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcBloquearReemissaoConta(Ljava/lang/Integer;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indcBloquearReemissaoConta:Ljava/lang/Integer;

    return-void
.end method

.method public setIndcTarifaCatgoria(Ljava/lang/Integer;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indcTarifaCatgoria:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorAjusteConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorAjusteConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorAnormalidadeImovelCortadoComConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorAnormalidadeImovelCortadoComConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorArmazenarCoordenadas(Ljava/lang/Integer;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorArmazenarCoordenadas:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorBancoCarregado(Ljava/lang/Integer;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorBancoCarregado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorCalcularConsumoAcumulado(Ljava/lang/Integer;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCalcularConsumoAcumulado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorCalculoAutomatico(Ljava/lang/Integer;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCalculoAutomatico:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorCarteira17(Ljava/lang/Integer;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorCarteira17:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorDesconsiderarRateioEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorDesconsiderarRateioEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorExigirLocalEntregaContaISC(Ljava/lang/Integer;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorExigirLocalEntregaContaISC:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorInverterRoteiroFiltrado(Ljava/lang/Integer;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorInverterRoteiroFiltrado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorLidoNaoLidoFiltrado(Ljava/lang/Integer;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorLidoNaoLidoFiltrado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorModeloImpressora(Ljava/lang/Integer;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorModeloImpressora:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorParImparFiltrado(Ljava/lang/Integer;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorParImparFiltrado:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorPercentualColetaEsgoto(Ljava/lang/Integer;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorPercentualColetaEsgoto:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorRateioAreaComumImovelNaoFat(Ljava/lang/Integer;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRateioAreaComumImovelNaoFat:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorRotaMarcacao(Ljava/lang/Integer;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRotaMarcacao:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorRotaMarcacaoAtiva:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorSistemaLeitura(Ljava/lang/Integer;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorSistemaLeitura:Ljava/lang/Integer;

    return-void
.end method

.method public setIndicadorTransmissaoOffline(Ljava/lang/Integer;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->indicadorTransmissaoOffline:Ljava/lang/Integer;

    return-void
.end method

.method public setInscricaoEstadualEmpresa(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->inscricaoEstadualEmpresa:Ljava/lang/String;

    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->login:Ljava/lang/String;

    return-void
.end method

.method public setMaxDiasNovaLigacao(Ljava/lang/Integer;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->maxDiasNovaLigacao:Ljava/lang/Integer;

    return-void
.end method

.method public setModuloVerificadorCodigoBarras(Ljava/lang/Integer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->moduloVerificadorCodigoBarras:Ljava/lang/Integer;

    return-void
.end method

.method public setNumeroConvenioCarteira17(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->numeroConvenioCarteira17:Ljava/lang/String;

    return-void
.end method

.method public setPercentToleranciaRateio(Ljava/math/BigDecimal;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->percentToleranciaRateio:Ljava/math/BigDecimal;

    return-void
.end method

.method public setQtdDiasAjusteConsumo(Ljava/lang/Integer;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdDiasAjusteConsumo:Ljava/lang/Integer;

    return-void
.end method

.method public setQtdImoveis(Ljava/lang/Integer;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdImoveis:Ljava/lang/Integer;

    return-void
.end method

.method public setQtdImovelCondominio(Ljava/lang/Integer;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->qtdImovelCondominio:Ljava/lang/Integer;

    return-void
.end method

.method public setSenha(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->senha:Ljava/lang/String;

    return-void
.end method

.method public setTelefone0800(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->telefone0800:Ljava/lang/String;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 264
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method

.method public setValorContaFichaCompensacao(Ljava/math/BigDecimal;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->valorContaFichaCompensacao:Ljava/math/BigDecimal;

    return-void
.end method

.method public setValorMinimEmissaoConta(Ljava/math/BigDecimal;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->valorMinimEmissaoConta:Ljava/math/BigDecimal;

    return-void
.end method

.method public setVersaoCelular(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SistemaParametros;->versaoCelular:Ljava/lang/String;

    return-void
.end method
