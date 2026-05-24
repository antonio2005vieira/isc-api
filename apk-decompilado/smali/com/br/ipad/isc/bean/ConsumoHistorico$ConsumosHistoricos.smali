.class public final Lcom/br/ipad/isc/bean/ConsumoHistorico$ConsumosHistoricos;
.super Ljava/lang/Object;
.source "ConsumoHistorico.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoHistorico;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsumosHistoricos"
.end annotation


# static fields
.field public static final ANORMALIDADECONSUMO:Ljava/lang/String; = "CSAN_ID"

.field public static final ANORMLEITURAFATURADA:Ljava/lang/String; = "LTAN_ID"

.field public static final CONSUMOCOBRADOMICRO:Ljava/lang/String; = "CSHI_NNCONSUMOCOBMICRO"

.field public static final CONSUMOCOBRADOORIGINAL:Ljava/lang/String; = "CSHI_NNCONSCOBORIGINAL"

.field public static final CONSUMOCOBSEMCONTRATODEMANDA:Ljava/lang/String; = "CSHI_NNCONCOBSEMCTDEMAN"

.field public static final CONSUMOMEDIDO:Ljava/lang/String; = "CSHI_NNCONSUMOMEDIDO"

.field public static final CONSUMORATEIO:Ljava/lang/String; = "CSHI_NNCONSUMORATEIO"

.field public static final COSNUMOCOBRADO:Ljava/lang/String; = "CSHI_NNCONSUMOCOBRADO"

.field public static final DIASCONSUMO:Ljava/lang/String; = "CSHI_NNDIASCONSUMO"

.field public static final ID:Ljava/lang/String; = "CSHI_ID"

.field public static final LEITURAATUAL:Ljava/lang/String; = "CSHI_NNLEITURAATUAL"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"

.field public static final MESMOTIVOREVISAO:Ljava/lang/String; = "CSHI_NNMESMOTIVOREVISAO"

.field public static final TIPOCONSUMO:Ljava/lang/String; = "CSTP_ID"

.field public static final TIPOLIGACAO:Ljava/lang/String; = "LGTI_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CSHI_TMULTIMAALTERACAO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
