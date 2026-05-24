.class public Lcom/br/ipad/isc/bean/LogFinalizacao;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "LogFinalizacao.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoesTipos;,
        Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoes;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private codigoMensagemFinalizacao:Ljava/lang/String;

.field private dataEnvio:Ljava/util/Date;

.field private id:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LGFI_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LGFI_DTENVIO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LGFI_CDMSGFINALIZACAO"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/br/ipad/isc/bean/LogFinalizacao;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->id:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getCodigoMensagemFinalizacao()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->codigoMensagemFinalizacao:Ljava/lang/String;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/br/ipad/isc/bean/LogFinalizacao;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getDataEnvio()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->dataEnvio:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "log_finalizacao"

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LogFinalizacao;",
            ">;"
        }
    .end annotation

    const-string v0, "LGFI_ID"

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "LGFI_DTENVIO"

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "LGFI_CDMSGFINALIZACAO"

    .line 109
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :cond_0
    new-instance v4, Lcom/br/ipad/isc/bean/LogFinalizacao;

    invoke-direct {v4}, Lcom/br/ipad/isc/bean/LogFinalizacao;-><init>()V

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/LogFinalizacao;->setId(Ljava/lang/Integer;)V

    .line 117
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->convertStrToDataBusca(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/LogFinalizacao;->setDataEnvio(Ljava/util/Date;)V

    .line 118
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/bean/LogFinalizacao;->setCodigoMensagemFinalizacao(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getDataEnvio()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getDataEnvio()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGFI_DTENVIO"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/LogFinalizacao;->getCodigoMensagemFinalizacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGFI_CDMSGFINALIZACAO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCodigoMensagemFinalizacao(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->codigoMensagemFinalizacao:Ljava/lang/String;

    return-void
.end method

.method public setDataEnvio(Ljava/util/Date;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->dataEnvio:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->verificarNuloInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/LogFinalizacao;->id:Ljava/lang/Integer;

    return-void
.end method
