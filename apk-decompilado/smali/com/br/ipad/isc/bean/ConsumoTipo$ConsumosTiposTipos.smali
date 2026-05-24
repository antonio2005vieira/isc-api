.class public final Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;
.super Ljava/lang/Object;
.source "ConsumoTipo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoTipo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumosTiposTipos"
.end annotation


# instance fields
.field public final DESCRICAO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ConsumoTipo;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ConsumoTipo;)V
    .locals 4

    .line 78
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->this$0:Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 79
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->ID:Ljava/lang/String;

    const-string v0, " VARCHAR(30) NOT NULL "

    .line 80
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->DESCRICAO:Ljava/lang/String;

    const-string v1, " TIMESTAMP NOT NULL "

    .line 81
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    .line 83
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ConsumoTipo$ConsumosTiposTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
