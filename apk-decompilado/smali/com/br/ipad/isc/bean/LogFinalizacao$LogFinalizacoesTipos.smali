.class public final Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;
.super Ljava/lang/Object;
.source "LogFinalizacao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/LogFinalizacao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogFinalizacoesTipos"
.end annotation


# instance fields
.field public final CODIGO_MENSAGEM_FINALIZACAO:Ljava/lang/String;

.field public final DATA_ENVIO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/LogFinalizacao;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/LogFinalizacao;)V
    .locals 3

    .line 76
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->this$0:Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 77
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER NULL"

    .line 78
    iput-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->DATA_ENVIO:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->CODIGO_MENSAGEM_FINALIZACAO:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object v0, v1, p1

    .line 81
    iput-object v1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
