.class public final Lcom/br/ipad/isc/bean/SequencialRotaMarcacao$SequencialRotaMarcacoes;
.super Ljava/lang/Object;
.source "SequencialRotaMarcacao.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequencialRotaMarcacoes"
.end annotation


# static fields
.field public static final ANOMESREFERENCIA:Ljava/lang/String; = "RMSE_AMREFERENCIA"

.field public static final ID:Ljava/lang/String; = "RMSE_ID"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
