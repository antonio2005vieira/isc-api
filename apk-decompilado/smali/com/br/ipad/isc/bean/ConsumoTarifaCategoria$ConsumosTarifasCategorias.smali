.class public final Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria$ConsumosTarifasCategorias;
.super Ljava/lang/Object;
.source "ConsumoTarifaCategoria.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsumosTarifasCategorias"
.end annotation


# static fields
.field public static final CONSUMOMINIMOSUBCATEGORIA:Ljava/lang/String; = "CSTF_NNCONSUMOMINIMO"

.field public static final CONSUMOTARIFA:Ljava/lang/String; = "CSTF_ID"

.field public static final DATAVIGENCIA:Ljava/lang/String; = "CSTF_DTVIGENCIA"

.field public static final ID:Ljava/lang/String; = "CSTC_ID"

.field public static final IDCATEGORIA:Ljava/lang/String; = "CATG_ID"

.field public static final IDSUBCATEGORIA:Ljava/lang/String; = "SCAT_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CSTF_TMULTIMAALTERACAO"

.field public static final VALORTARIFAMINIMACATEGORIA:Ljava/lang/String; = "CSTF_VLTARIFAMINIMA"

.field public static final VALORTARIFAMINIMACATEGORIAESGOTO:Ljava/lang/String; = "CSTF_VLTARIFAMINIMAESGOTO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
