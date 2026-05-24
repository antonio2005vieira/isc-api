.class public final Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;
.super Ljava/lang/Object;
.source "ConsumoTarifaFaixa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumosTarifasFaixasTipos"
.end annotation


# instance fields
.field public final CONSUMOFAIXAFIM:Ljava/lang/String;

.field public final CONSUMOFAIXAINICIO:Ljava/lang/String;

.field public final CONSUMOTARIFACATEGORIA:Ljava/lang/String;

.field public final DATAVIGENCIA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALORCONSUMOTARIFA:Ljava/lang/String;

.field public final VALORCONSUMOTARIFAESGOTO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;)V
    .locals 7

    .line 146
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 147
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER CONSTRAINT [FK1_CONSUMO_TARIFA_FAIXA] REFERENCES [consumo_tarifa_categoria]([CSTC_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 148
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->CONSUMOTARIFACATEGORIA:Ljava/lang/String;

    const-string v1, " DATE NOT NULL "

    .line 149
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->DATAVIGENCIA:Ljava/lang/String;

    const-string v2, " INTEGER NOT NULL "

    .line 150
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->CONSUMOFAIXAINICIO:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->CONSUMOFAIXAFIM:Ljava/lang/String;

    const-string v3, " NUMERIC(13,2) NOT NULL"

    .line 152
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->VALORCONSUMOTARIFA:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 153
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    .line 154
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->VALORCONSUMOTARIFAESGOTO:Ljava/lang/String;

    const/16 v5, 0x8

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

    aput-object v2, v5, p1

    const/4 p1, 0x5

    aput-object v3, v5, p1

    const/4 p1, 0x6

    aput-object v4, v5, p1

    const/4 p1, 0x7

    aput-object v3, v5, p1

    .line 156
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixasTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
