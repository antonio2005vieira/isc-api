.class public final Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;
.super Ljava/lang/Object;
.source "QualidadeAgua.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/QualidadeAgua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QualidadeAguaTipos"
.end annotation


# instance fields
.field public final ANOMESREFERENCIA:Ljava/lang/String;

.field public final DESCRICAOFONTECAPTACAO:Ljava/lang/String;

.field public final DESCRICAOPADRAOCLORO:Ljava/lang/String;

.field public final DESCRICAOPADRAOCOLIFORMESFECAIS:Ljava/lang/String;

.field public final DESCRICAOPADRAOCOLIFORMESTOTAIS:Ljava/lang/String;

.field public final DESCRICAOPADRAOCOLIFTERMO:Ljava/lang/String;

.field public final DESCRICAOPADRAOCOR:Ljava/lang/String;

.field public final DESCRICAOPADRAOFERRO:Ljava/lang/String;

.field public final DESCRICAOPADRAOFLUOR:Ljava/lang/String;

.field public final DESCRICAOPADRAONITRATO:Ljava/lang/String;

.field public final DESCRICAOPADRAOPH:Ljava/lang/String;

.field public final DESCRICAOPADRAOTURBIDEZ:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDLOCALIDADE:Ljava/lang/String;

.field public final IDSETORCOMERCIAL:Ljava/lang/String;

.field public final NUMEROCLORORESIDUAL:Ljava/lang/String;

.field public final NUMEROCOLIFORMESFECAIS:Ljava/lang/String;

.field public final NUMEROCOLIFORMESTERMO:Ljava/lang/String;

.field public final NUMEROCOLIFORMESTOTAIS:Ljava/lang/String;

.field public final NUMEROCOR:Ljava/lang/String;

.field public final NUMEROFERRO:Ljava/lang/String;

.field public final NUMEROFLUOR:Ljava/lang/String;

.field public final NUMERONITRATO:Ljava/lang/String;

.field public final NUMEROPH:Ljava/lang/String;

.field public final NUMEROTURBIDEZ:Ljava/lang/String;

.field public final QUANTIDADECLOROANALISADAS:Ljava/lang/String;

.field public final QUANTIDADECLOROCONFORME:Ljava/lang/String;

.field public final QUANTIDADECOLIFFECAISCANALISADAS:Ljava/lang/String;

.field public final QUANTIDADECOLIFFECCAISCONFORME:Ljava/lang/String;

.field public final QUANTIDADECOLIFTERMOANALISADAS:Ljava/lang/String;

.field public final QUANTIDADECOLIFTERMOCONFORME:Ljava/lang/String;

.field public final QUANTIDADECOLIFTOTAISANALISADAS:Ljava/lang/String;

.field public final QUANTIDADECOLIFTOTAISCONFORME:Ljava/lang/String;

.field public final QUANTIDADECORANALISADAS:Ljava/lang/String;

.field public final QUANTIDADECORCONFORME:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASCLORO:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASCOLIFFECAIS:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASCOLIFTERMO:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASCOLIFTOTAIS:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASCOR:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASFLUOR:Ljava/lang/String;

.field public final QUANTIDADEEXIGIDASTURBIDEZ:Ljava/lang/String;

.field public final QUANTIDADEFLUORANALISADAS:Ljava/lang/String;

.field public final QUANTIDADEFLUORCONFORME:Ljava/lang/String;

.field public final QUANTIDADETURBIDEZANALISADAS:Ljava/lang/String;

.field public final QUANTIDADETURBIDEZCONFORME:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/QualidadeAgua;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/QualidadeAgua;)V
    .locals 7

    .line 580
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->this$0:Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 581
    iput-object p1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NULL "

    .line 582
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->IDLOCALIDADE:Ljava/lang/String;

    .line 583
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->IDSETORCOMERCIAL:Ljava/lang/String;

    const-string v1, " VARCHAR(20) NULL "

    .line 584
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOTURBIDEZ:Ljava/lang/String;

    .line 585
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOPH:Ljava/lang/String;

    .line 586
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOCOR:Ljava/lang/String;

    .line 587
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOCLORO:Ljava/lang/String;

    .line 588
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOFLUOR:Ljava/lang/String;

    .line 589
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOFERRO:Ljava/lang/String;

    .line 590
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOCOLIFORMESTOTAIS:Ljava/lang/String;

    .line 591
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOCOLIFORMESFECAIS:Ljava/lang/String;

    .line 592
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAONITRATO:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOPADRAOCOLIFTERMO:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->ANOMESREFERENCIA:Ljava/lang/String;

    const-string v2, " NUMERIC(5,2) NULL "

    .line 595
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROCLORORESIDUAL:Ljava/lang/String;

    .line 596
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROTURBIDEZ:Ljava/lang/String;

    .line 597
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROPH:Ljava/lang/String;

    .line 598
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROCOR:Ljava/lang/String;

    .line 599
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROFLUOR:Ljava/lang/String;

    .line 600
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROFERRO:Ljava/lang/String;

    .line 601
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROCOLIFORMESTOTAIS:Ljava/lang/String;

    .line 602
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROCOLIFORMESFECAIS:Ljava/lang/String;

    .line 603
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMERONITRATO:Ljava/lang/String;

    .line 604
    iput-object v2, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->NUMEROCOLIFORMESTERMO:Ljava/lang/String;

    const-string v3, " VARCHAR(30) NULL "

    .line 605
    iput-object v3, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->DESCRICAOFONTECAPTACAO:Ljava/lang/String;

    .line 606
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASTURBIDEZ:Ljava/lang/String;

    .line 607
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASCOR:Ljava/lang/String;

    .line 608
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASCLORO:Ljava/lang/String;

    .line 609
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASFLUOR:Ljava/lang/String;

    .line 610
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASCOLIFTOTAIS:Ljava/lang/String;

    .line 611
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASCOLIFFECAIS:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEEXIGIDASCOLIFTERMO:Ljava/lang/String;

    .line 613
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADETURBIDEZANALISADAS:Ljava/lang/String;

    .line 614
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECORANALISADAS:Ljava/lang/String;

    .line 615
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECLOROANALISADAS:Ljava/lang/String;

    .line 616
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEFLUORANALISADAS:Ljava/lang/String;

    .line 617
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFTOTAISANALISADAS:Ljava/lang/String;

    .line 618
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFFECAISCANALISADAS:Ljava/lang/String;

    .line 619
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFTERMOANALISADAS:Ljava/lang/String;

    .line 620
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADETURBIDEZCONFORME:Ljava/lang/String;

    .line 621
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECORCONFORME:Ljava/lang/String;

    .line 622
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECLOROCONFORME:Ljava/lang/String;

    .line 623
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADEFLUORCONFORME:Ljava/lang/String;

    .line 624
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFTOTAISCONFORME:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFFECCAISCONFORME:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->QUANTIDADECOLIFTERMOCONFORME:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 627
    iput-object v4, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v5, 0x2f

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    aput-object v0, v5, p1

    const/4 p1, 0x3

    aput-object v1, v5, p1

    const/4 p1, 0x4

    aput-object v1, v5, p1

    const/4 p1, 0x5

    aput-object v1, v5, p1

    const/4 p1, 0x6

    aput-object v1, v5, p1

    const/4 p1, 0x7

    aput-object v1, v5, p1

    const/16 p1, 0x8

    aput-object v1, v5, p1

    const/16 p1, 0x9

    aput-object v1, v5, p1

    const/16 p1, 0xa

    aput-object v1, v5, p1

    const/16 p1, 0xb

    aput-object v1, v5, p1

    const/16 p1, 0xc

    aput-object v1, v5, p1

    const/16 p1, 0xd

    aput-object v0, v5, p1

    const/16 p1, 0xe

    aput-object v2, v5, p1

    const/16 p1, 0xf

    aput-object v2, v5, p1

    const/16 p1, 0x10

    aput-object v2, v5, p1

    const/16 p1, 0x11

    aput-object v2, v5, p1

    const/16 p1, 0x12

    aput-object v2, v5, p1

    const/16 p1, 0x13

    aput-object v2, v5, p1

    const/16 p1, 0x14

    aput-object v2, v5, p1

    const/16 p1, 0x15

    aput-object v2, v5, p1

    const/16 p1, 0x16

    aput-object v2, v5, p1

    const/16 p1, 0x17

    aput-object v2, v5, p1

    const/16 p1, 0x18

    aput-object v3, v5, p1

    const/16 p1, 0x19

    aput-object v0, v5, p1

    const/16 p1, 0x1a

    aput-object v0, v5, p1

    const/16 p1, 0x1b

    aput-object v0, v5, p1

    const/16 p1, 0x1c

    aput-object v0, v5, p1

    const/16 p1, 0x1d

    aput-object v0, v5, p1

    const/16 p1, 0x1e

    aput-object v0, v5, p1

    const/16 p1, 0x1f

    aput-object v0, v5, p1

    const/16 p1, 0x20

    aput-object v0, v5, p1

    const/16 p1, 0x21

    aput-object v0, v5, p1

    const/16 p1, 0x22

    aput-object v0, v5, p1

    const/16 p1, 0x23

    aput-object v0, v5, p1

    const/16 p1, 0x24

    aput-object v0, v5, p1

    const/16 p1, 0x25

    aput-object v0, v5, p1

    const/16 p1, 0x26

    aput-object v0, v5, p1

    const/16 p1, 0x27

    aput-object v0, v5, p1

    const/16 p1, 0x28

    aput-object v0, v5, p1

    const/16 p1, 0x29

    aput-object v0, v5, p1

    const/16 p1, 0x2a

    aput-object v0, v5, p1

    const/16 p1, 0x2b

    aput-object v0, v5, p1

    const/16 p1, 0x2c

    aput-object v0, v5, p1

    const/16 p1, 0x2d

    aput-object v0, v5, p1

    const/16 p1, 0x2e

    aput-object v4, v5, p1

    .line 629
    iput-object v5, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/br/ipad/isc/bean/QualidadeAgua$QualidadeAguaTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
