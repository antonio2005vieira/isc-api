.class public final Lcom/br/ipad/isc/bean/ContaCategoria$ContasCategorias;
.super Ljava/lang/Object;
.source "ContaCategoria.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContasCategorias"
.end annotation


# static fields
.field public static final CATEGORIASUBCATEGORIA:Ljava/lang/String; = "CASC_ID"

.field public static final ID:Ljava/lang/String; = "CTCG_ID"

.field public static final NUMCONSUMO:Ljava/lang/String; = "CTCG_NNCONSUMO"

.field public static final NUMCONSUMOMINIMO:Ljava/lang/String; = "CTCG_NNCONSUMOMIN"

.field public static final TIPOLIGACAO:Ljava/lang/String; = "LGTI_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CTCG_TMULTIMAALTERACAO"

.field public static final VALORFATURADO:Ljava/lang/String; = "CTCG_VLFATURADO"

.field public static final VALORTARIFAMINIMA:Ljava/lang/String; = "CTCG_VLTARIFAMINIMA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
