.class public final Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;
.super Ljava/lang/Object;
.source "LigacaoAguaSituacaoConsumoTipo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LigacaoAguaSituacaoConsumoTipoTipos"
.end annotation


# instance fields
.field public final ID:Ljava/lang/String;

.field public final IDCONSUMOTIPO:Ljava/lang/String;

.field public final IDLIGACAOAGUASITUACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;)V
    .locals 3

    .line 92
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->this$0:Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 93
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NOT NULL "

    .line 94
    iput-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->IDLIGACAOAGUASITUACAO:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->IDCONSUMOTIPO:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object v0, v1, p1

    .line 97
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo$LigacaoAguaSituacaoConsumoTipoTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
