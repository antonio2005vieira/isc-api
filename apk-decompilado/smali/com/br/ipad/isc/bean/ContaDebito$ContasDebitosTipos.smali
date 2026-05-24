.class public final Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;
.super Ljava/lang/Object;
.source "ContaDebito.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaDebito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContasDebitosTipos"
.end annotation


# instance fields
.field public final ANOMESREFERENCIA:Ljava/lang/String;

.field public final DATAVENCIMENTOCONTA:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final MATRICULA:Ljava/lang/String;

.field public final ULTIMAALTERACAO:Ljava/lang/String;

.field public final VALORACRESCIMOIMPONTUALIDADE:Ljava/lang/String;

.field public final VALORCONTA:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/ContaDebito;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ContaDebito;)V
    .locals 7

    .line 110
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->this$0:Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 111
    iput-object p1, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->ID:Ljava/lang/String;

    const-string v0, " CONSTRAINT [FK1_CONTA_DEBITO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 112
    iput-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->MATRICULA:Ljava/lang/String;

    const-string v1, " VARCHAR(10)  NOT NULL "

    .line 113
    iput-object v1, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->ANOMESREFERENCIA:Ljava/lang/String;

    const-string v2, " NUMERIC(13,2) NOT NULL "

    .line 114
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->VALORCONTA:Ljava/lang/String;

    const-string v3, " DATE NOT NULL "

    .line 115
    iput-object v3, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->DATAVENCIMENTOCONTA:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->VALORACRESCIMOIMPONTUALIDADE:Ljava/lang/String;

    const-string v4, " TIMESTAMP NOT NULL "

    .line 117
    iput-object v4, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->ULTIMAALTERACAO:Ljava/lang/String;

    const/4 v5, 0x7

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

    aput-object v2, v5, p1

    const/4 p1, 0x6

    aput-object v4, v5, p1

    .line 119
    iput-object v5, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
