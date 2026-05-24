.class public final Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;
.super Ljava/lang/Object;
.source "SequencialRotaMarcacao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SequencialRotaMarcacoesTipos"
.end annotation


# instance fields
.field public final ANOMESREFERENCIA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;)V
    .locals 4

    .line 86
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->this$0:Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY"

    .line 88
    iput-object p1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->ID:Ljava/lang/String;

    const-string v0, "  INTEGER  NOT NULL CONSTRAINT [FK1_ROTA_MARCACAO_SEQUENCIA] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT"

    .line 89
    iput-object v0, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " INTEGER NULL"

    .line 90
    iput-object v1, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->ANOMESREFERENCIA:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    .line 92
    iput-object v2, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoesTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
