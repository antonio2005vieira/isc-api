.class public final Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;
.super Ljava/lang/Object;
.source "ContaComunicado.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaComunicado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContaComunicadosTipos"
.end annotation


# instance fields
.field public final DESCRICAO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ContaComunicado;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ContaComunicado;)V
    .locals 3

    .line 46
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->this$0:Lcom/br/ipad/isc/bean/ContaComunicado;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY "

    .line 47
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->ID:Ljava/lang/String;

    const-string v0, " TEXT NOT NULL "

    .line 48
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->DESCRICAO:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    .line 50
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaComunicado$ContaComunicadosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
