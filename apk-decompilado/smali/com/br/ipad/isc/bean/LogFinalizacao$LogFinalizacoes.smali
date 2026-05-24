.class public final Lcom/br/ipad/isc/bean/LogFinalizacao$LogFinalizacoes;
.super Ljava/lang/Object;
.source "LogFinalizacao.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/LogFinalizacao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogFinalizacoes"
.end annotation


# static fields
.field public static final CODIGO_MENSAGEM_FINALIZACAO:Ljava/lang/String; = "LGFI_CDMSGFINALIZACAO"

.field public static final DATA_ENVIO:Ljava/lang/String; = "LGFI_DTENVIO"

.field public static final ID:Ljava/lang/String; = "LGFI_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
