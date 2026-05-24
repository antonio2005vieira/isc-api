.class public final Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;
.super Ljava/lang/Object;
.source "ImovelRevisitar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ImovelRevisitar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImoveisRevisitarTipos"
.end annotation


# instance fields
.field public final ID:Ljava/lang/String;

.field public final INDICADORREVISITADO:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ImovelRevisitar;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelRevisitar;)V
    .locals 5

    .line 77
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->this$0:Lcom/br/ipad/isc/bean/ImovelRevisitar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 78
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->ID:Ljava/lang/String;

    const-string v0, "  INTEGER CONSTRAINT [FK1_IMOVEL_REVISITAR] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 79
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER NULL DEFAULT 2 "

    .line 80
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->INDICADORREVISITADO:Ljava/lang/String;

    const-string v2, " TIMESTAMP NOT NULL "

    .line 81
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    .line 83
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ImovelRevisitar$ImoveisRevisitarTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
