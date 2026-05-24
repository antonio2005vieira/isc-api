.class public final Lcom/br/ipad/isc/bean/CreditoRealizado$CreditosRealizados;
.super Ljava/lang/Object;
.source "CreditoRealizado.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/CreditoRealizado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreditosRealizados"
.end annotation


# static fields
.field public static final CODIGOCREDITOTIPO:Ljava/lang/String; = "CRRZ_CDCREDITOTIPO"

.field public static final DESCRICAOCREDITOTIPO:Ljava/lang/String; = "CRRZ_DSCREDITOTIPO"

.field public static final ID:Ljava/lang/String; = "CRRZ_ID"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CRRZ_TMULTIMAALTERACAO"

.field public static final VALOR:Ljava/lang/String; = "CRRZ_VALOR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
