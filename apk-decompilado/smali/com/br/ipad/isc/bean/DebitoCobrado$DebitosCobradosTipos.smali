.class public final Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;
.super Ljava/lang/Object;
.source "DebitoCobrado.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/DebitoCobrado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DebitosCobradosTipos"
.end annotation


# instance fields
.field public final CODIGODEBITO:Ljava/lang/String;

.field public final DESCRICAODEBITOTIPO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final INDICADORUSO:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALOR:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/DebitoCobrado;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/DebitoCobrado;)V
    .locals 8

    .line 115
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->this$0:Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 116
    iput-object p1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER CONSTRAINT [FK1_DEBITO_COBRADO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 117
    iput-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " VARCHAR(90) NOT NULL "

    .line 118
    iput-object v1, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->DESCRICAODEBITOTIPO:Ljava/lang/String;

    const-string v2, " NUMERIC(13,2) NOT NULL "

    .line 119
    iput-object v2, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->VALOR:Ljava/lang/String;

    const-string v3, " INTEGER  NULL "

    .line 120
    iput-object v3, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->CODIGODEBITO:Ljava/lang/String;

    const-string v4, " INTEGER NULL DEFAULT 2 "

    .line 121
    iput-object v4, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->INDICADORUSO:Ljava/lang/String;

    const-string v5, " TIMESTAMP NOT NULL "

    .line 122
    iput-object v5, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v0, v6, p1

    const/4 p1, 0x2

    aput-object v1, v6, p1

    const/4 p1, 0x3

    aput-object v2, v6, p1

    const/4 p1, 0x4

    aput-object v3, v6, p1

    const/4 p1, 0x5

    aput-object v4, v6, p1

    const/4 p1, 0x6

    aput-object v5, v6, p1

    .line 125
    iput-object v6, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobradosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
