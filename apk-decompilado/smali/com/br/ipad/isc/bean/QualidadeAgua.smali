.class public Lcom/br/ipad/isc/bean/QualidadeAgua;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "QualidadeAgua.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;,
        Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadesAguas;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amReferenciaQualidadeAgua:Ljava/lang/Integer;

.field private cloroPadrao:Ljava/lang/String;

.field private coliformesFecaisPadrao:Ljava/lang/String;

.field private coliformesTermoTolerantesPadrao:Ljava/lang/String;

.field private coliformesTotaisPadrao:Ljava/lang/String;

.field private corPadrao:Ljava/lang/String;

.field private descricaoFonteCapacitacao:Ljava/lang/String;

.field private ferroPadrao:Ljava/lang/String;

.field private fluorPadrao:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private idLocalidade:Ljava/lang/Integer;

.field private idSetorComercial:Ljava/lang/Integer;

.field private nitratoPadrao:Ljava/lang/String;

.field private numeroCloroResidual:Ljava/math/BigDecimal;

.field private numeroColiformesFecais:Ljava/math/BigDecimal;

.field private numeroColiformesTermoTolerantes:Ljava/math/BigDecimal;

.field private numeroColiformesTotais:Ljava/math/BigDecimal;

.field private numeroCor:Ljava/math/BigDecimal;

.field private numeroFerro:Ljava/math/BigDecimal;

.field private numeroFluor:Ljava/math/BigDecimal;

.field private numeroNitrato:Ljava/math/BigDecimal;

.field private numeroPh:Ljava/math/BigDecimal;

.field private numeroTurbidez:Ljava/math/BigDecimal;

.field private phPadrao:Ljava/lang/String;

.field private quantidadeCloroAnalisadas:Ljava/lang/Integer;

.field private quantidadeCloroConforme:Ljava/lang/Integer;

.field private quantidadeCloroExigidas:Ljava/lang/Integer;

.field private quantidadeColiformesFecaisAnalisadas:Ljava/lang/Integer;

.field private quantidadeColiformesFecaisConforme:Ljava/lang/Integer;

.field private quantidadeColiformesFecaisExigidas:Ljava/lang/Integer;

.field private quantidadeColiformesTermoTolerantesAnalisadas:Ljava/lang/Integer;

.field private quantidadeColiformesTermoTolerantesConforme:Ljava/lang/Integer;

.field private quantidadeColiformesTermoTolerantesExigidas:Ljava/lang/Integer;

.field private quantidadeColiformesTotaisAnalisadas:Ljava/lang/Integer;

.field private quantidadeColiformesTotaisConforme:Ljava/lang/Integer;

.field private quantidadeColiformesTotaisExigidas:Ljava/lang/Integer;

.field private quantidadeCorAnalisadas:Ljava/lang/Integer;

.field private quantidadeCorConforme:Ljava/lang/Integer;

.field private quantidadeCorExigidas:Ljava/lang/Integer;

.field private quantidadeFluorAnalisadas:Ljava/lang/Integer;

.field private quantidadeFluorConforme:Ljava/lang/Integer;

.field private quantidadeFluorExigidas:Ljava/lang/Integer;

.field private quantidadeTurbidezAnalisadas:Ljava/lang/Integer;

.field private quantidadeTurbidezConforme:Ljava/lang/Integer;

.field private quantidadeTurbidezExigidas:Ljava/lang/Integer;

.field private turbidezPadrao:Ljava/lang/String;

.field private ultimaAlteracao:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "QLAG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LOCA_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "STCM_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "QLAG_DSPADRAOTURBIDEZ"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "QLAG_DSPADRAOPH"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "QLAG_DSPADRAOCOR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "QLAG_DSPADRAOCLORO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "QLAG_DSPADRAOFLUOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "QLAG_DSPADRAOFERRO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "QLAG_DSPADRAOCOLIFORMESTOTAIS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "QLAG_DSPADRAOCOLIFORMESFECAIS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "QLAG_DSPADRAONITRATO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "QLAG_DSPADRAOCOLIFTERMO"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "QLAG_AMREFERENCIA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "QLAG_NNCLORORESIDUAL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "QLAG_NNINDICETURBIDEZ"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "QLAG_NNINDICEPH"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "QLAG_NNINDICECOR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "QLAG_NNINDICEFLUOR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "QLAG_NNINDICEFERRO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "QLAG_NNINDICECOLIFORMESTOTAIS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "QLAG_NNINDICECOLIFORMESFECAIS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "QLAG_NNNITRATO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "QLAG_NNINDICECOLIFTERMO"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "QLAG_DSFONTECAPTACAO"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "QLAG_QTTURBIDEZEXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "QLAG_QTCOREXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "QLAG_QTCLOROEXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "QLAG_QTFLUOREXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "QLAG_QTCOLIFTOTEXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "QLAG_QTCOLIFFECEXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "QLAG_QTCOLIFTERMOSEXIGIDAS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "QLAG_QTTURBIDEZANALISADAS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "QLAG_QTCORANALISADAS"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "QLAG_QTCLOROANALISADAS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "QLAG_QTFLUORANALISADAS"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "QLAG_QTCOLIFTOTANLS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "QLAG_QTCOLIFFECANLS"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "QLAG_QTCOLIFTERMOANLS"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "QLAG_QTTURBIDEZCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "QLAG_QTCORCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "QLAG_QTCLOROCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "QLAG_QTFLUORCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "QLAG_QTCOLIFTOTCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "QLAG_QTCOLIFFECCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "QLAG_QTCOLIFTERMOCONFORME"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "QLAG_TMULTIMAALTERACAO"

    aput-object v2, v0, v1

    .line 371
    sput-object v0, Lcom/br/ipad/isc/bean/QualidadeAgua;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
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

    .line 22
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->insertFromFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method private insertFromFile(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 444
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setIdLocalidade(Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    .line 447
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setIdSetorComercial(Ljava/lang/Integer;)V

    :cond_1
    const/4 v0, 0x4

    .line 451
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setTurbidezPadrao(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 452
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setPhPadrao(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 453
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setCorPadrao(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 454
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setCloroPadrao(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 455
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setFluorPadrao(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 456
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setFerroPadrao(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 457
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesTotaisPadrao(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 458
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesFecaisPadrao(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 459
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNitratoPadrao(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 460
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesTermoTolerantesPadrao(Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 462
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setAmReferenciaQualidadeAgua(Ljava/lang/Integer;)V

    :cond_2
    const/16 v0, 0xf

    .line 466
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroCloroResidual(Ljava/math/BigDecimal;)V

    :cond_3
    const/16 v0, 0x10

    .line 470
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroTurbidez(Ljava/math/BigDecimal;)V

    :cond_4
    const/16 v0, 0x11

    .line 474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 475
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroPh(Ljava/math/BigDecimal;)V

    :cond_5
    const/16 v0, 0x12

    .line 478
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 479
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroCor(Ljava/math/BigDecimal;)V

    :cond_6
    const/16 v0, 0x13

    .line 482
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 483
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroFluor(Ljava/math/BigDecimal;)V

    :cond_7
    const/16 v0, 0x14

    .line 486
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 487
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroFerro(Ljava/math/BigDecimal;)V

    :cond_8
    const/16 v0, 0x15

    .line 490
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 491
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesTotais(Ljava/math/BigDecimal;)V

    :cond_9
    const/16 v0, 0x16

    .line 494
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 495
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesFecais(Ljava/math/BigDecimal;)V

    :cond_a
    const/16 v0, 0x17

    .line 498
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    .line 499
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroNitrato(Ljava/math/BigDecimal;)V

    :cond_b
    const/16 v0, 0x18

    .line 502
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 503
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesTermoTolerantes(Ljava/math/BigDecimal;)V

    :cond_c
    const/16 v0, 0x19

    .line 506
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 507
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setDescricaoFonteCapacitacao(Ljava/lang/String;)V

    :cond_d
    const/16 v0, 0x1a

    .line 509
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 510
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezExigidas(Ljava/lang/Integer;)V

    :cond_e
    const/16 v0, 0x1b

    .line 512
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 513
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorExigidas(Ljava/lang/Integer;)V

    :cond_f
    const/16 v0, 0x1c

    .line 515
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 516
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroExigidas(Ljava/lang/Integer;)V

    :cond_10
    const/16 v0, 0x1d

    .line 518
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    .line 519
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorExigidas(Ljava/lang/Integer;)V

    :cond_11
    const/16 v0, 0x1e

    .line 521
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    .line 522
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisExigidas(Ljava/lang/Integer;)V

    :cond_12
    const/16 v0, 0x1f

    .line 524
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    .line 525
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisExigidas(Ljava/lang/Integer;)V

    :cond_13
    const/16 v0, 0x20

    .line 527
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    .line 528
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesExigidas(Ljava/lang/Integer;)V

    :cond_14
    const/16 v0, 0x21

    .line 530
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15

    .line 531
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezAnalisadas(Ljava/lang/Integer;)V

    :cond_15
    const/16 v0, 0x22

    .line 533
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x22

    .line 534
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorAnalisadas(Ljava/lang/Integer;)V

    :cond_16
    const/16 v0, 0x23

    .line 536
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x23

    .line 537
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroAnalisadas(Ljava/lang/Integer;)V

    :cond_17
    const/16 v0, 0x24

    .line 539
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x24

    .line 540
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorAnalisadas(Ljava/lang/Integer;)V

    :cond_18
    const/16 v0, 0x25

    .line 542
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x25

    .line 543
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisAnalisadas(Ljava/lang/Integer;)V

    :cond_19
    const/16 v0, 0x26

    .line 545
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x26

    .line 546
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisAnalisadas(Ljava/lang/Integer;)V

    :cond_1a
    const/16 v0, 0x27

    .line 548
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x27

    .line 549
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesAnalisadas(Ljava/lang/Integer;)V

    :cond_1b
    const/16 v0, 0x28

    .line 551
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x28

    .line 552
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezConforme(Ljava/lang/Integer;)V

    :cond_1c
    const/16 v0, 0x29

    .line 554
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x29

    .line 555
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorConforme(Ljava/lang/Integer;)V

    :cond_1d
    const/16 v0, 0x2a

    .line 557
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x2a

    .line 558
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroConforme(Ljava/lang/Integer;)V

    :cond_1e
    const/16 v0, 0x2b

    .line 560
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x2b

    .line 561
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorConforme(Ljava/lang/Integer;)V

    :cond_1f
    const/16 v0, 0x2c

    .line 563
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x2c

    .line 564
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisConforme(Ljava/lang/Integer;)V

    :cond_20
    const/16 v0, 0x2d

    .line 566
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x2d

    .line 567
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisConforme(Ljava/lang/Integer;)V

    :cond_21
    const/16 v0, 0x2e

    .line 569
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x2e

    .line 570
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesConforme(Ljava/lang/Integer;)V

    .line 572
    :cond_22
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setUltimaAlteracao(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAmReferenciaQualidadeAgua()Ljava/lang/Integer;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->amReferenciaQualidadeAgua:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCloroPadrao()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->cloroPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getColiformesFecaisPadrao()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesFecaisPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getColiformesTermoTolerantesPadrao()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesTermoTolerantesPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getColiformesTotaisPadrao()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesTotaisPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 389
    sget-object v0, Lcom/br/ipad/isc/bean/QualidadeAgua;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getCorPadrao()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->corPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getDescricaoFonteCapacitacao()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->descricaoFonteCapacitacao:Ljava/lang/String;

    return-object v0
.end method

.method public getFerroPadrao()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->ferroPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getFluorPadrao()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->fluorPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLocalidade()Ljava/lang/Integer;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->idLocalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdSetorComercial()Ljava/lang/Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->idSetorComercial:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNitratoPadrao()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->nitratoPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "qualidade_agua"

    return-object v0
.end method

.method public getNumeroCloroResidual()Ljava/math/BigDecimal;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroCloroResidual:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroColiformesFecais()Ljava/math/BigDecimal;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesFecais:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroColiformesTermoTolerantes()Ljava/math/BigDecimal;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesTermoTolerantes:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroColiformesTotais()Ljava/math/BigDecimal;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesTotais:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroCor()Ljava/math/BigDecimal;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroCor:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroFerro()Ljava/math/BigDecimal;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroFerro:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroFluor()Ljava/math/BigDecimal;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroFluor:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroNitrato()Ljava/math/BigDecimal;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroNitrato:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroPh()Ljava/math/BigDecimal;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroPh:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNumeroTurbidez()Ljava/math/BigDecimal;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroTurbidez:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getPhPadrao()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->phPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantidadeCloroAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeCloroConforme()Ljava/lang/Integer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeCloroExigidas()Ljava/lang/Integer;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesFecaisAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesFecaisConforme()Ljava/lang/Integer;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesFecaisExigidas()Ljava/lang/Integer;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeCorAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeCorConforme()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeCorExigidas()Ljava/lang/Integer;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeFluorAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeFluorConforme()Ljava/lang/Integer;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeFluorExigidas()Ljava/lang/Integer;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezAnalisadas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeTurbidezConforme()Ljava/lang/Integer;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezConforme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantidadeTurbidezExigidas()Ljava/lang/Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezExigidas:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTurbidezPadrao()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->turbidezPadrao:Ljava/lang/String;

    return-object v0
.end method

.method public getUltimaAlteracao()Ljava/util/Date;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->ultimaAlteracao:Ljava/util/Date;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 75
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/QualidadeAgua;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 726
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "QLAG_ID"

    .line 727
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "LOCA_ID"

    .line 728
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "STCM_ID"

    .line 729
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "QLAG_AMREFERENCIA"

    .line 730
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "QLAG_DSFONTECAPTACAO"

    .line 731
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "QLAG_DSPADRAOCLORO"

    .line 732
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "QLAG_DSPADRAOCOLIFORMESFECAIS"

    .line 733
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "QLAG_DSPADRAOCOLIFORMESTOTAIS"

    .line 734
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "QLAG_DSPADRAOCOLIFTERMO"

    .line 735
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "QLAG_DSPADRAOCOR"

    .line 736
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "QLAG_DSPADRAOFERRO"

    .line 737
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "QLAG_DSPADRAOFLUOR"

    .line 738
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "QLAG_DSPADRAONITRATO"

    .line 739
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "QLAG_DSPADRAOPH"

    .line 740
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v9

    const-string v9, "QLAG_DSPADRAOTURBIDEZ"

    .line 741
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v20, v9

    const-string v9, "QLAG_NNCLORORESIDUAL"

    move/from16 v21, v15

    .line 743
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "QLAG_NNINDICECOLIFORMESFECAIS"

    move-object/from16 v23, v9

    .line 744
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v24, v9

    const-string v9, "QLAG_NNINDICECOLIFTERMO"

    move-object/from16 v25, v15

    .line 745
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "QLAG_NNINDICECOLIFORMESTOTAIS"

    move-object/from16 v27, v9

    .line 746
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v28, v9

    const-string v9, "QLAG_NNINDICECOR"

    move-object/from16 v29, v15

    .line 747
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "QLAG_NNINDICEFERRO"

    move-object/from16 v31, v9

    .line 748
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v32, v9

    const-string v9, "QLAG_NNINDICEFLUOR"

    move-object/from16 v33, v15

    .line 749
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "QLAG_NNNITRATO"

    move-object/from16 v35, v9

    .line 750
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v36, v9

    const-string v9, "QLAG_NNINDICEPH"

    move-object/from16 v37, v15

    .line 751
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "QLAG_NNINDICETURBIDEZ"

    move-object/from16 v39, v9

    .line 752
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v40, v9

    const-string v9, "QLAG_QTCLOROANALISADAS"

    move-object/from16 v41, v15

    .line 754
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v42, v9

    const-string v9, "QLAG_QTCLOROCONFORME"

    move/from16 v43, v15

    .line 755
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v44, v9

    const-string v9, "QLAG_QTCOLIFFECANLS"

    move/from16 v45, v15

    .line 756
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v46, v9

    const-string v9, "QLAG_QTCOLIFFECCONFORME"

    move/from16 v47, v15

    .line 757
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v48, v9

    const-string v9, "QLAG_QTCOLIFTERMOANLS"

    move/from16 v49, v15

    .line 758
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v50, v9

    const-string v9, "QLAG_QTCOLIFTERMOCONFORME"

    move/from16 v51, v15

    .line 759
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v52, v9

    const-string v9, "QLAG_QTCOLIFTOTANLS"

    move/from16 v53, v15

    .line 760
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v54, v9

    const-string v9, "QLAG_QTCOLIFTOTCONFORME"

    move/from16 v55, v15

    .line 761
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v56, v9

    const-string v9, "QLAG_QTCORANALISADAS"

    .line 762
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v57, v9

    const-string v9, "QLAG_QTCORCONFORME"

    .line 763
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v58, v9

    const-string v9, "QLAG_QTCLOROEXIGIDAS"

    .line 764
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v59, v9

    const-string v9, "QLAG_QTCOLIFFECEXIGIDAS"

    .line 765
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v60, v9

    const-string v9, "QLAG_QTCOLIFTERMOSEXIGIDAS"

    .line 766
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v61, v9

    const-string v9, "QLAG_QTCOLIFTOTEXIGIDAS"

    .line 767
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v62, v9

    const-string v9, "QLAG_QTCOREXIGIDAS"

    .line 768
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v63, v9

    const-string v9, "QLAG_QTFLUOREXIGIDAS"

    .line 769
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v64, v9

    const-string v9, "QLAG_QTTURBIDEZEXIGIDAS"

    .line 770
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v65, v9

    const-string v9, "QLAG_QTFLUORANALISADAS"

    .line 771
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v66, v9

    const-string v9, "QLAG_QTFLUORCONFORME"

    .line 772
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v67, v9

    const-string v9, "QLAG_QTTURBIDEZANALISADAS"

    .line 773
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v68, v9

    const-string v9, "QLAG_QTTURBIDEZCONFORME"

    .line 774
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v69, v9

    const-string v9, "QLAG_TMULTIMAALTERACAO"

    .line 776
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v70, v9

    .line 778
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v71, v9

    .line 781
    :goto_0
    new-instance v9, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v9}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>()V

    move/from16 v72, v15

    .line 782
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setId(Ljava/lang/Integer;)V

    .line 783
    invoke-static {v0, v3, v4}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setIdLocalidade(Ljava/lang/Integer;)V

    .line 784
    invoke-static {v0, v5, v6}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setIdSetorComercial(Ljava/lang/Integer;)V

    .line 785
    invoke-static {v0, v7, v8}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setAmReferenciaQualidadeAgua(Ljava/lang/Integer;)V

    .line 786
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesFecaisPadrao(Ljava/lang/String;)V

    .line 787
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setCloroPadrao(Ljava/lang/String;)V

    .line 788
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesTermoTolerantesPadrao(Ljava/lang/String;)V

    .line 789
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setColiformesTotaisPadrao(Ljava/lang/String;)V

    .line 790
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setCorPadrao(Ljava/lang/String;)V

    move/from16 v15, v21

    move-object/from16 v21, v1

    .line 791
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setPhPadrao(Ljava/lang/String;)V

    move/from16 v1, v20

    move/from16 v20, v2

    .line 792
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setTurbidezPadrao(Ljava/lang/String;)V

    move/from16 v2, v19

    move/from16 v19, v1

    .line 793
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setDescricaoFonteCapacitacao(Ljava/lang/String;)V

    move/from16 v1, v16

    move/from16 v16, v2

    .line 794
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setFerroPadrao(Ljava/lang/String;)V

    move/from16 v2, v17

    move/from16 v17, v1

    .line 795
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setFluorPadrao(Ljava/lang/String;)V

    move/from16 v1, v18

    move/from16 v18, v2

    .line 796
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNitratoPadrao(Ljava/lang/String;)V

    move-object/from16 v2, v23

    move/from16 v23, v1

    .line 798
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v1, v22

    move-object/from16 v22, v3

    .line 799
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroCloroResidual(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_0
    move/from16 v1, v22

    move-object/from16 v22, v3

    :goto_1
    move-object/from16 v3, v25

    move/from16 v25, v1

    .line 802
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    move/from16 v1, v24

    move-object/from16 v24, v2

    .line 803
    invoke-static {v0, v3, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesFecais(Ljava/math/BigDecimal;)V

    goto :goto_2

    :cond_1
    move/from16 v1, v24

    move-object/from16 v24, v2

    :goto_2
    move-object/from16 v2, v27

    move/from16 v27, v1

    .line 806
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v1, v26

    move-object/from16 v26, v3

    .line 807
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesTermoTolerantes(Ljava/math/BigDecimal;)V

    goto :goto_3

    :cond_2
    move/from16 v1, v26

    move-object/from16 v26, v3

    :goto_3
    move-object/from16 v3, v29

    move/from16 v29, v1

    .line 810
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v1, v28

    move-object/from16 v28, v2

    .line 811
    invoke-static {v0, v3, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroColiformesTotais(Ljava/math/BigDecimal;)V

    goto :goto_4

    :cond_3
    move/from16 v1, v28

    move-object/from16 v28, v2

    :goto_4
    move-object/from16 v2, v31

    move/from16 v31, v1

    .line 814
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    move/from16 v1, v30

    move-object/from16 v30, v3

    .line 815
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroCor(Ljava/math/BigDecimal;)V

    goto :goto_5

    :cond_4
    move/from16 v1, v30

    move-object/from16 v30, v3

    :goto_5
    move-object/from16 v3, v33

    move/from16 v33, v1

    .line 818
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    move/from16 v1, v32

    move-object/from16 v32, v2

    .line 819
    invoke-static {v0, v3, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroFerro(Ljava/math/BigDecimal;)V

    goto :goto_6

    :cond_5
    move/from16 v1, v32

    move-object/from16 v32, v2

    :goto_6
    move-object/from16 v2, v35

    move/from16 v35, v1

    .line 822
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6

    move/from16 v1, v34

    move-object/from16 v34, v3

    .line 823
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroFluor(Ljava/math/BigDecimal;)V

    goto :goto_7

    :cond_6
    move/from16 v1, v34

    move-object/from16 v34, v3

    :goto_7
    move-object/from16 v3, v37

    move/from16 v37, v1

    .line 826
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    move/from16 v1, v36

    move-object/from16 v36, v2

    .line 827
    invoke-static {v0, v3, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroNitrato(Ljava/math/BigDecimal;)V

    goto :goto_8

    :cond_7
    move/from16 v1, v36

    move-object/from16 v36, v2

    :goto_8
    move-object/from16 v2, v39

    move/from16 v39, v1

    .line 830
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_8

    move/from16 v1, v38

    move-object/from16 v38, v3

    .line 831
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroPh(Ljava/math/BigDecimal;)V

    goto :goto_9

    :cond_8
    move/from16 v1, v38

    move-object/from16 v38, v3

    :goto_9
    move-object/from16 v3, v41

    move/from16 v41, v1

    .line 834
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9

    move/from16 v1, v40

    move-object/from16 v40, v2

    .line 835
    invoke-static {v0, v3, v1}, Lcom/br/ipad/isc/util/Util;->getDoubleBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setNumeroTurbidez(Ljava/math/BigDecimal;)V

    goto :goto_a

    :cond_9
    move/from16 v1, v40

    move-object/from16 v40, v2

    :goto_a
    move/from16 v2, v43

    move-object/from16 v43, v3

    move-object/from16 v74, v42

    move/from16 v42, v1

    move-object/from16 v1, v74

    .line 838
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroAnalisadas(Ljava/lang/Integer;)V

    move/from16 v3, v45

    move/from16 v45, v2

    move-object/from16 v74, v44

    move-object/from16 v44, v1

    move-object/from16 v1, v74

    .line 839
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroConforme(Ljava/lang/Integer;)V

    move/from16 v2, v47

    move/from16 v47, v3

    move-object/from16 v74, v46

    move-object/from16 v46, v1

    move-object/from16 v1, v74

    .line 840
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisAnalisadas(Ljava/lang/Integer;)V

    move/from16 v3, v49

    move/from16 v49, v2

    move-object/from16 v74, v48

    move-object/from16 v48, v1

    move-object/from16 v1, v74

    .line 841
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisConforme(Ljava/lang/Integer;)V

    move/from16 v2, v51

    move/from16 v51, v3

    move-object/from16 v74, v50

    move-object/from16 v50, v1

    move-object/from16 v1, v74

    .line 842
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesAnalisadas(Ljava/lang/Integer;)V

    move/from16 v3, v53

    move/from16 v53, v2

    move-object/from16 v74, v52

    move-object/from16 v52, v1

    move-object/from16 v1, v74

    .line 843
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesConforme(Ljava/lang/Integer;)V

    move/from16 v2, v55

    move/from16 v55, v3

    move-object/from16 v74, v54

    move-object/from16 v54, v1

    move-object/from16 v1, v74

    .line 844
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisAnalisadas(Ljava/lang/Integer;)V

    move/from16 v3, v72

    move/from16 v72, v2

    move-object/from16 v74, v56

    move-object/from16 v56, v1

    move-object/from16 v1, v74

    .line 845
    invoke-static {v0, v1, v3}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisConforme(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCORANALISADAS"

    move-object/from16 v73, v1

    move/from16 v1, v57

    .line 846
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorAnalisadas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCORCONFORME"

    move/from16 v1, v58

    .line 847
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorConforme(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCLOROEXIGIDAS"

    move/from16 v1, v59

    .line 848
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCloroExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCOLIFFECEXIGIDAS"

    move/from16 v1, v60

    .line 849
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesFecaisExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCOLIFTERMOSEXIGIDAS"

    move/from16 v1, v61

    .line 850
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTermoTolerantesExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCOLIFTOTEXIGIDAS"

    move/from16 v1, v62

    .line 851
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeColiformesTotaisExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTCOREXIGIDAS"

    move/from16 v1, v63

    .line 852
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeCorExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTFLUOREXIGIDAS"

    move/from16 v1, v64

    .line 853
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTTURBIDEZEXIGIDAS"

    move/from16 v1, v65

    .line 854
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezExigidas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTFLUORANALISADAS"

    move/from16 v1, v66

    .line 855
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorAnalisadas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTFLUORCONFORME"

    move/from16 v1, v67

    .line 856
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeFluorConforme(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTTURBIDEZANALISADAS"

    move/from16 v1, v68

    .line 857
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezAnalisadas(Ljava/lang/Integer;)V

    const-string v2, "QLAG_QTTURBIDEZCONFORME"

    move/from16 v1, v69

    .line 858
    invoke-static {v0, v2, v1}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setQuantidadeTurbidezConforme(Ljava/lang/Integer;)V

    move/from16 v2, v70

    .line 859
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/br/ipad/isc/bean/QualidadeAgua;->setUltimaAlteracao(Ljava/lang/String;)V

    move-object/from16 v1, v71

    .line 861
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_a

    move-object v9, v1

    goto/16 :goto_b

    :cond_a
    move-object/from16 v71, v1

    move/from16 v70, v2

    move/from16 v2, v20

    move-object/from16 v1, v21

    move/from16 v21, v15

    move/from16 v20, v19

    move v15, v3

    move/from16 v19, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v3, v22

    move/from16 v18, v23

    move-object/from16 v23, v24

    move/from16 v22, v25

    move-object/from16 v25, v26

    move/from16 v24, v27

    move-object/from16 v27, v28

    move/from16 v26, v29

    move-object/from16 v29, v30

    move/from16 v28, v31

    move-object/from16 v31, v32

    move/from16 v30, v33

    move-object/from16 v33, v34

    move/from16 v32, v35

    move-object/from16 v35, v36

    move/from16 v34, v37

    move-object/from16 v37, v38

    move/from16 v36, v39

    move-object/from16 v39, v40

    move/from16 v38, v41

    move/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v44

    move/from16 v43, v45

    move-object/from16 v44, v46

    move/from16 v45, v47

    move-object/from16 v46, v48

    move/from16 v47, v49

    move-object/from16 v48, v50

    move/from16 v49, v51

    move-object/from16 v50, v52

    move/from16 v51, v53

    move-object/from16 v52, v54

    move/from16 v53, v55

    move-object/from16 v54, v56

    move/from16 v55, v72

    move-object/from16 v56, v73

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    :goto_b
    return-object v9
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 648
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 649
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOCA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getIdSetorComercial()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STCM_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getAmReferenciaQualidadeAgua()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_AMREFERENCIA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getDescricaoFonteCapacitacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSFONTECAPTACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCloroPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOCLORO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesFecaisPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOCOLIFORMESFECAIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTotaisPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOCOLIFORMESTOTAIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getColiformesTermoTolerantesPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOCOLIFTERMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getCorPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOCOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getFerroPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOFERRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getFluorPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOFLUOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNitratoPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAONITRATO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getPhPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOPH"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getTurbidezPadrao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_DSPADRAOTURBIDEZ"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroCloroResidual()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroCloroResidual()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNCLORORESIDUAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesFecais()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesFecais()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICECOLIFORMESFECAIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTermoTolerantes()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTermoTolerantes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICECOLIFTERMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTotais()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroColiformesTotais()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICECOLIFORMESTOTAIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroCor()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 677
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroCor()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICECOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_4
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroFerro()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 680
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroFerro()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICEFERRO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_5
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroFluor()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 683
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroFluor()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICEFLUOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_6
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroNitrato()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 686
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroNitrato()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNNITRATO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_7
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 689
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroPh()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICEPH"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_8
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroTurbidez()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 692
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getNumeroTurbidez()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_NNINDICETURBIDEZ"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_9
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCLOROANALISADAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCLOROCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesFecaisAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFFECANLS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesFecaisConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFFECCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTERMOANLS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTERMOCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCORANALISADAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCORCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCloroExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCLOROEXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesFecaisExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFFECEXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTermoTolerantesExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTERMOSEXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTOTEXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeCorExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOREXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTFLUOREXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezExigidas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTTURBIDEZEXIGIDAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTFLUORANALISADAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeFluorConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTFLUORCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTTURBIDEZANALISADAS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeTurbidezConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTTURBIDEZCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisAnalisadas()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTOTANLS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/QualidadeAgua;->getQuantidadeColiformesTotaisConforme()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QLAG_QTCOLIFTOTCONFORME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QLAG_TMULTIMAALTERACAO"

    .line 717
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAmReferenciaQualidadeAgua(Ljava/lang/Integer;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->amReferenciaQualidadeAgua:Ljava/lang/Integer;

    return-void
.end method

.method public setCloroPadrao(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->cloroPadrao:Ljava/lang/String;

    return-void
.end method

.method public setColiformesFecaisPadrao(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesFecaisPadrao:Ljava/lang/String;

    return-void
.end method

.method public setColiformesTermoTolerantesPadrao(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesTermoTolerantesPadrao:Ljava/lang/String;

    return-void
.end method

.method public setColiformesTotaisPadrao(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->coliformesTotaisPadrao:Ljava/lang/String;

    return-void
.end method

.method public setCorPadrao(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->corPadrao:Ljava/lang/String;

    return-void
.end method

.method public setDescricaoFonteCapacitacao(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->descricaoFonteCapacitacao:Ljava/lang/String;

    return-void
.end method

.method public setFerroPadrao(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->ferroPadrao:Ljava/lang/String;

    return-void
.end method

.method public setFluorPadrao(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->fluorPadrao:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLocalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->idLocalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setIdSetorComercial(Ljava/lang/Integer;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->idSetorComercial:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setNitratoPadrao(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->nitratoPadrao:Ljava/lang/String;

    return-void
.end method

.method public setNumeroCloroResidual(Ljava/math/BigDecimal;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroCloroResidual:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroColiformesFecais(Ljava/math/BigDecimal;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesFecais:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroColiformesTermoTolerantes(Ljava/math/BigDecimal;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesTermoTolerantes:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroColiformesTotais(Ljava/math/BigDecimal;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroColiformesTotais:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroCor(Ljava/math/BigDecimal;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroCor:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroFerro(Ljava/math/BigDecimal;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroFerro:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroFluor(Ljava/math/BigDecimal;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroFluor:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroNitrato(Ljava/math/BigDecimal;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroNitrato:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroPh(Ljava/math/BigDecimal;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroPh:Ljava/math/BigDecimal;

    return-void
.end method

.method public setNumeroTurbidez(Ljava/math/BigDecimal;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->numeroTurbidez:Ljava/math/BigDecimal;

    return-void
.end method

.method public setPhPadrao(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->phPadrao:Ljava/lang/String;

    return-void
.end method

.method public setQuantidadeCloroAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeCloroConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeCloroExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCloroExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesFecaisAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesFecaisConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesFecaisExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesFecaisExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTermoTolerantesAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTermoTolerantesConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTermoTolerantesExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTermoTolerantesExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTotaisAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTotaisConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeColiformesTotaisExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeColiformesTotaisExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeCorAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeCorConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeCorExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeCorExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeFluorAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeFluorConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeFluorExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeFluorExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeTurbidezAnalisadas(Ljava/lang/Integer;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezAnalisadas:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeTurbidezConforme(Ljava/lang/Integer;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezConforme:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantidadeTurbidezExigidas(Ljava/lang/Integer;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->quantidadeTurbidezExigidas:Ljava/lang/Integer;

    return-void
.end method

.method public setTurbidezPadrao(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->turbidezPadrao:Ljava/lang/String;

    return-void
.end method

.method public setUltimaAlteracao(Ljava/lang/String;)V
    .locals 0

    .line 368
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua;->ultimaAlteracao:Ljava/util/Date;

    return-void
.end method
