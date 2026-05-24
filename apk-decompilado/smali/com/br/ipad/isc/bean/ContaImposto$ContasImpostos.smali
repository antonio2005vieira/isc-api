.class public final Lcom/br/ipad/isc/bean/ContaImposto$ContasImpostos;
.super Ljava/lang/Object;
.source "ContaImposto.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaImposto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContasImpostos"
.end annotation


# static fields
.field public static final DESCRICAOIMPOSTOTIPO:Ljava/lang/String; = "CNIP_DSIMPOSTOTIPO"

.field public static final ID:Ljava/lang/String; = "CNIP_ID"

.field public static final IDIMPOSTO:Ljava/lang/String; = "IMTP_ID"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"

.field public static final PERCENTUALALIQUOTA:Ljava/lang/String; = "CNIP_PCALIQUOTA"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CNIP_TMULTIMAALTERACAO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
