.class public final Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;
.super Ljava/lang/Object;
.source "FaturamentoSituacaoTipo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FaturamentoSituacaoTipoTipos"
.end annotation


# instance fields
.field public final ID:Ljava/lang/String;

.field public final IDCONSACOBRARCOMLEITURA:Ljava/lang/String;

.field public final IDCONSACOBRARSEMLEITURA:Ljava/lang/String;

.field public final IDLEITURAANORMALIDADECOMLEITURA:Ljava/lang/String;

.field public final IDLEITURAANORMALIDADESEMLEITURA:Ljava/lang/String;

.field public final INDICADORDESCONSIDERESTALTCONS:Ljava/lang/String;

.field public final INDICADORVALIDOAGUA:Ljava/lang/String;

.field public final INDICADORVALIDOESGOTO:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;)V
    .locals 5

    .line 155
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->this$0:Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 156
    iput-object p1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NOT NULL "

    .line 157
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->IDCONSACOBRARSEMLEITURA:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->IDCONSACOBRARCOMLEITURA:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->IDLEITURAANORMALIDADESEMLEITURA:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->IDLEITURAANORMALIDADECOMLEITURA:Ljava/lang/String;

    const-string v1, " INTEGER NULL DEFAULT 2 "

    .line 161
    iput-object v1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->INDICADORVALIDOAGUA:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->INDICADORVALIDOESGOTO:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->INDICADORDESCONSIDERESTALTCONS:Ljava/lang/String;

    const-string v2, " TIMESTAMP NOT NULL "

    .line 164
    iput-object v2, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    const/4 p1, 0x4

    aput-object v0, v3, p1

    const/4 p1, 0x5

    aput-object v1, v3, p1

    const/4 p1, 0x6

    aput-object v1, v3, p1

    const/4 p1, 0x7

    aput-object v1, v3, p1

    const/16 p1, 0x8

    aput-object v2, v3, p1

    .line 166
    iput-object v3, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo$FaturamentoSituacaoTipoTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
