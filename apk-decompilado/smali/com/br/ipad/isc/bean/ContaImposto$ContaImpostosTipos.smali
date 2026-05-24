.class public final Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;
.super Ljava/lang/Object;
.source "ContaImposto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaImposto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContaImpostosTipos"
.end annotation


# instance fields
.field public final DESCRICAOIMPOSTOTIPO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDIMPOSTO:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final PERCENTUALALIQUOTA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ContaImposto;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ContaImposto;)V
    .locals 7

    .line 118
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->this$0:Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 119
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER CONSTRAINT [FK1_CONTA_IMPOSTO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 120
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER  NOT NULL "

    .line 121
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->IDIMPOSTO:Ljava/lang/String;

    const-string v2, " VARCHAR(10) NOT NULL "

    .line 122
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->DESCRICAOIMPOSTOTIPO:Ljava/lang/String;

    const-string v3, " NUMERIC(5,2) NOT NULL "

    .line 123
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->PERCENTUALALIQUOTA:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 124
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    aput-object v1, v5, p1

    const/4 p1, 0x3

    aput-object v2, v5, p1

    const/4 p1, 0x4

    aput-object v3, v5, p1

    const/4 p1, 0x5

    aput-object v4, v5, p1

    .line 127
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaImposto$ContaImpostosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
