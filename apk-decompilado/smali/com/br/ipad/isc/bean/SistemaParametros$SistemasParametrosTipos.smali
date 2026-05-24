.class public final Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;
.super Ljava/lang/Object;
.source "SistemaParametros.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/SistemaParametros;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SistemasParametrosTipos"
.end annotation


# instance fields
.field public final CNPJEMPRESA:Ljava/lang/String;

.field public final CODIGOEMPRESAFEBRABAN:Ljava/lang/String;

.field public final CODIGO_BANCO_FICHA_COMPENSACAO:Ljava/lang/String;

.field public final CODIGO_MOEDA_FICHA_COMPENSACAO:Ljava/lang/String;

.field public final CONTRASTECONTA:Ljava/lang/String;

.field public final DATAARRECADACAO:Ljava/lang/String;

.field public final DATAFIMBLOQUEIO:Ljava/lang/String;

.field public final DATAINICIOBLOQUEIO:Ljava/lang/String;

.field public final DATALEITURAAJUSTE:Ljava/lang/String;

.field public final DATA_PROXIMA_LEITURA:Ljava/lang/String;

.field public final DECREMENTOMAXCONSUMOECONOMIA:Ljava/lang/String;

.field public final DESCRICAO_LOGRADOURO_FILTRADO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDIMOVELCONDOMINIO:Ljava/lang/String;

.field public final IDIMOVELSELECIONADO:Ljava/lang/String;

.field public final INCREMENTOMAXCONSUMOECONOMIA:Ljava/lang/String;

.field public final INDICADOPERCENTUALCOLETAESGOTO:Ljava/lang/String;

.field public final INDICADORBANCOCARREGADO:Ljava/lang/String;

.field public final INDICADORBLOQUEIOCONTA:Ljava/lang/String;

.field public final INDICADORCONSUMOAJUSTE:Ljava/lang/String;

.field public final INDICADORDESCRATEIOESGOTO:Ljava/lang/String;

.field public final INDICADORROTAMARCACAO:Ljava/lang/String;

.field public final INDICADORROTAMARCACAOATIVA:Ljava/lang/String;

.field public final INDICADORTARIFACATEGORIA:Ljava/lang/String;

.field public final INDICADORTRANSMISSAOOFFLINE:Ljava/lang/String;

.field public final INDICADOR_CALCULAR_CONSUMO_ACUMULADO:Ljava/lang/String;

.field public final INDICADOR_CALCULO_AUTOMATICO:Ljava/lang/String;

.field public final INDICADOR_CARTEIRA_17:Ljava/lang/String;

.field public final INDICADOR_COORDENADAS:Ljava/lang/String;

.field public final INDICADOR_EXIGIR_LOCAL_ENTREGA_CONTA_ISC:Ljava/lang/String;

.field public final INDICADOR_INVERTER_ROTEIRO_FILTRADO:Ljava/lang/String;

.field public final INDICADOR_LAYOUT_ANTIGO:Ljava/lang/String;

.field public final INDICADOR_LIDO_NAO_LIDO_FILTRADO:Ljava/lang/String;

.field public final INDICADOR_PAR_IMPAR_FILTRADO:Ljava/lang/String;

.field public final INDICADOR_RATEIO_AREA_COMUM_IMOV_NFAT:Ljava/lang/String;

.field public final INDICADOR_SELECIONAR_IMPRESSORA:Ljava/lang/String;

.field public final INDICADOR_SISTEMA_LEITURA:Ljava/lang/String;

.field public final IND_ANORM_IMOVEL_CORTADO_COM_CONSUMO:Ljava/lang/String;

.field public final INSCRICAOESTADUAL:Ljava/lang/String;

.field public final LOGIN:Ljava/lang/String;

.field public final MAXDIASNOVALIGACAO:Ljava/lang/String;

.field public final MINIMOEMISSAOCONTA:Ljava/lang/String;

.field public final MODULODIGITOVERIFICADOR:Ljava/lang/String;

.field public final NUMERO_CONVENIO_CARTEIRA_17:Ljava/lang/String;

.field public final PERCENTUALTOLERANCIARATEIO:Ljava/lang/String;

.field public final QNTIMOVEIS:Ljava/lang/String;

.field public final QNTIMOVELCONDOMINIO:Ljava/lang/String;

.field public final QTDEDIASCONSUMOAJUSTE:Ljava/lang/String;

.field public final SENHA:Ljava/lang/String;

.field public final TELEFONE:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALOR_CONTA_FICHA_COMPENSACAO:Ljava/lang/String;

.field public final VERSAOCELULAR:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/SistemaParametros;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/SistemaParametros;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 694
    iput-object v1, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->this$0:Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 696
    iput-object v1, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->ID:Ljava/lang/String;

    const-string v2, " VARCHAR(6) NOT NULL"

    .line 697
    iput-object v2, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->CODIGOEMPRESAFEBRABAN:Ljava/lang/String;

    const-string v3, " DATE NOT NULL"

    .line 698
    iput-object v3, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DATAARRECADACAO:Ljava/lang/String;

    const-string v4, " VARCHAR(12) NULL"

    .line 699
    iput-object v4, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->TELEFONE:Ljava/lang/String;

    const-string v5, " VARCHAR(14) NULL"

    .line 700
    iput-object v5, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->CNPJEMPRESA:Ljava/lang/String;

    const-string v6, " VARCHAR(20) NULL"

    .line 701
    iput-object v6, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INSCRICAOESTADUAL:Ljava/lang/String;

    const-string v7, " NUMERIC(13,2) NOT NULL"

    .line 702
    iput-object v7, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->MINIMOEMISSAOCONTA:Ljava/lang/String;

    const-string v8, " NUMERIC(3,1) NULL"

    .line 703
    iput-object v8, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->PERCENTUALTOLERANCIARATEIO:Ljava/lang/String;

    const-string v9, " INTEGER NULL"

    .line 704
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DECREMENTOMAXCONSUMOECONOMIA:Ljava/lang/String;

    .line 705
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INCREMENTOMAXCONSUMOECONOMIA:Ljava/lang/String;

    const-string v10, " INTEGER NOT NULL"

    .line 706
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORTARIFACATEGORIA:Ljava/lang/String;

    const-string v11, " VARCHAR(11) NOT NULL"

    .line 707
    iput-object v11, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->LOGIN:Ljava/lang/String;

    const-string v12, " VARCHAR(40) NOT NULL"

    .line 708
    iput-object v12, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->SENHA:Ljava/lang/String;

    .line 709
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DATALEITURAAJUSTE:Ljava/lang/String;

    const-string v13, " INTEGER NULL DEFAULT 2"

    .line 710
    iput-object v13, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORCONSUMOAJUSTE:Ljava/lang/String;

    .line 711
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORTRANSMISSAOOFFLINE:Ljava/lang/String;

    const-string v14, " VARCHAR(10) NULL"

    .line 712
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->VERSAOCELULAR:Ljava/lang/String;

    .line 713
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORBLOQUEIOCONTA:Ljava/lang/String;

    .line 714
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORROTAMARCACAO:Ljava/lang/String;

    .line 715
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->QTDEDIASCONSUMOAJUSTE:Ljava/lang/String;

    .line 716
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->MODULODIGITOVERIFICADOR:Ljava/lang/String;

    .line 717
    iput-object v3, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DATAINICIOBLOQUEIO:Ljava/lang/String;

    .line 718
    iput-object v3, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DATAFIMBLOQUEIO:Ljava/lang/String;

    const-string v15, " INTEGER NULL  DEFAULT 2"

    .line 719
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOPERCENTUALCOLETAESGOTO:Ljava/lang/String;

    .line 720
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORDESCRATEIOESGOTO:Ljava/lang/String;

    .line 721
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->IDIMOVELSELECIONADO:Ljava/lang/String;

    .line 722
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->QNTIMOVEIS:Ljava/lang/String;

    move-object/from16 p1, v15

    const-string v15, " INTEGER NULL DEFAULT 1"

    .line 724
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->MAXDIASNOVALIGACAO:Ljava/lang/String;

    .line 725
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->QNTIMOVELCONDOMINIO:Ljava/lang/String;

    .line 726
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->IDIMOVELCONDOMINIO:Ljava/lang/String;

    move-object/from16 v16, v15

    const-string v15, " INTEGER NOT NULL DEFAULT 2"

    .line 727
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORBANCOCARREGADO:Ljava/lang/String;

    .line 728
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADORROTAMARCACAOATIVA:Ljava/lang/String;

    .line 729
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_COORDENADAS:Ljava/lang/String;

    .line 730
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_RATEIO_AREA_COMUM_IMOV_NFAT:Ljava/lang/String;

    .line 731
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_SISTEMA_LEITURA:Ljava/lang/String;

    .line 732
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_LAYOUT_ANTIGO:Ljava/lang/String;

    move-object/from16 v17, v14

    const-string v14, " TIMESTAMP NOT NULL"

    .line 733
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    move-object/from16 v18, v14

    const-string v14, " INTEGER NOT NULL DEFAULT 0"

    .line 734
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->CONTRASTECONTA:Ljava/lang/String;

    .line 735
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_CALCULO_AUTOMATICO:Ljava/lang/String;

    .line 736
    iput-object v3, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DATA_PROXIMA_LEITURA:Ljava/lang/String;

    .line 737
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->IND_ANORM_IMOVEL_CORTADO_COM_CONSUMO:Ljava/lang/String;

    .line 738
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_EXIGIR_LOCAL_ENTREGA_CONTA_ISC:Ljava/lang/String;

    .line 739
    iput-object v6, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->NUMERO_CONVENIO_CARTEIRA_17:Ljava/lang/String;

    move-object/from16 v19, v14

    const-string v14, " VARCHAR(5) NOT NULL"

    .line 740
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->CODIGO_BANCO_FICHA_COMPENSACAO:Ljava/lang/String;

    .line 741
    iput-object v10, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->CODIGO_MOEDA_FICHA_COMPENSACAO:Ljava/lang/String;

    move-object/from16 v20, v14

    const-string v14, " NUMERIC(13,2) NULL"

    .line 742
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->VALOR_CONTA_FICHA_COMPENSACAO:Ljava/lang/String;

    .line 743
    iput-object v15, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_CARTEIRA_17:Ljava/lang/String;

    move-object/from16 v21, v14

    const-string v14, " VARCHAR(40) NULL"

    .line 744
    iput-object v14, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->DESCRICAO_LOGRADOURO_FILTRADO:Ljava/lang/String;

    .line 745
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_PAR_IMPAR_FILTRADO:Ljava/lang/String;

    .line 746
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_LIDO_NAO_LIDO_FILTRADO:Ljava/lang/String;

    .line 747
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_INVERTER_ROTEIRO_FILTRADO:Ljava/lang/String;

    .line 748
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_CALCULAR_CONSUMO_ACUMULADO:Ljava/lang/String;

    .line 749
    iput-object v9, v0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->INDICADOR_SELECIONAR_IMPRESSORA:Ljava/lang/String;

    const/16 v0, 0x35

    new-array v0, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    aput-object v1, v0, v22

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v9, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v11, v0, v1

    const/16 v1, 0xc

    aput-object v12, v0, v1

    const/16 v1, 0xd

    aput-object v9, v0, v1

    const/16 v1, 0xe

    aput-object v13, v0, v1

    const/16 v1, 0xf

    aput-object v10, v0, v1

    const/16 v1, 0x10

    aput-object v17, v0, v1

    const/16 v1, 0x11

    aput-object v10, v0, v1

    const/16 v1, 0x12

    aput-object v10, v0, v1

    const/16 v1, 0x13

    aput-object v9, v0, v1

    const/16 v1, 0x14

    aput-object v10, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object p1, v0, v1

    const/16 v1, 0x18

    aput-object p1, v0, v1

    const/16 v1, 0x19

    aput-object v9, v0, v1

    const/16 v1, 0x1a

    aput-object v9, v0, v1

    const/16 v1, 0x1b

    aput-object v16, v0, v1

    const/16 v1, 0x1c

    aput-object v9, v0, v1

    const/16 v1, 0x1d

    aput-object v9, v0, v1

    const/16 v1, 0x1e

    aput-object v15, v0, v1

    const/16 v1, 0x1f

    aput-object v15, v0, v1

    const/16 v1, 0x20

    aput-object v9, v0, v1

    const/16 v1, 0x21

    aput-object v15, v0, v1

    const/16 v1, 0x22

    aput-object v15, v0, v1

    const/16 v1, 0x23

    aput-object v18, v0, v1

    const/16 v1, 0x24

    aput-object v19, v0, v1

    const/16 v1, 0x25

    aput-object v15, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v15, v0, v1

    const/16 v1, 0x28

    aput-object v15, v0, v1

    const/16 v1, 0x29

    aput-object v6, v0, v1

    const/16 v1, 0x2a

    aput-object v20, v0, v1

    const/16 v1, 0x2b

    aput-object v10, v0, v1

    const/16 v1, 0x2c

    aput-object v21, v0, v1

    const/16 v1, 0x2d

    aput-object v15, v0, v1

    const/16 v1, 0x2e

    aput-object v14, v0, v1

    const/16 v1, 0x2f

    aput-object v9, v0, v1

    const/16 v1, 0x30

    aput-object v9, v0, v1

    const/16 v1, 0x31

    aput-object v9, v0, v1

    const/16 v1, 0x32

    aput-object v9, v0, v1

    const/16 v1, 0x33

    aput-object v9, v0, v1

    const/16 v1, 0x34

    aput-object v9, v0, v1

    move-object/from16 v1, p0

    .line 751
    iput-object v0, v1, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SistemaParametros$SistemasParametrosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
