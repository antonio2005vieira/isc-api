.class public final Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa$ConsumosTarifasFaixas;
.super Ljava/lang/Object;
.source "ConsumoTarifaFaixa.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsumosTarifasFaixas"
.end annotation


# static fields
.field public static final CONSUMOFAIXAFIM:Ljava/lang/String; = "CTFX_NNCONSUMOFAIXAFIM"

.field public static final CONSUMOFAIXAINICIO:Ljava/lang/String; = "CTFX_NNCOSUMOFAIXAINICIO"

.field public static final CONSUMOTARIFACATEGORIA:Ljava/lang/String; = "CSTC_ID"

.field public static final DATAVIGENCIA:Ljava/lang/String; = "CTFX_DTVIGENCIA"

.field public static final ID:Ljava/lang/String; = "CTFX_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CTFX_TMULTIMAALTERACAO"

.field public static final VALORCONSUMOTARIFA:Ljava/lang/String; = "CTFX_VLCONSUMOTARIFA"

.field public static final VALORCONSUMOTARIFAESGOTO:Ljava/lang/String; = "CTFX_VLCONSUMOTARIFAESGOTO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
