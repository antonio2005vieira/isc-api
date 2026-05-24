.class public final Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa$ContasCategoriasConsumosFaixas;
.super Ljava/lang/Object;
.source "ContaCategoriaConsumoFaixa.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContasCategoriasConsumosFaixas"
.end annotation


# static fields
.field public static final CONTACATEGORIA:Ljava/lang/String; = "CTCG_ID"

.field public static final ID:Ljava/lang/String; = "CCCF_ID"

.field public static final NUMCONSUMO:Ljava/lang/String; = "CCCF_NNCONSUMO"

.field public static final NUMCONSUMOFINAL:Ljava/lang/String; = "CCCF_NNCONSUMOFINAL"

.field public static final NUMCONSUMOINICIAL:Ljava/lang/String; = "CCCF_NNCONSUMOINICIAL"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CCCF_TMULTIMAALTERACAO"

.field public static final VALORFATURADO:Ljava/lang/String; = "CCCF_VLFATURADO"

.field public static final VALORTARIFA:Ljava/lang/String; = "CCCF_VLTARIFA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
