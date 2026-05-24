.class public final Lcom/br/ipad/isc/bean/DebitoCobrado$DebitosCobrados;
.super Ljava/lang/Object;
.source "DebitoCobrado.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/DebitoCobrado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebitosCobrados"
.end annotation


# static fields
.field public static final CODIGODEBITO:Ljava/lang/String; = "DBCO_CDDEBITO"

.field public static final DESCRICAODEBITOTIPO:Ljava/lang/String; = "DBCO_DSDEBITOTIPO"

.field public static final ID:Ljava/lang/String; = "DBCO_ID"

.field public static final INDICADORUSO:Ljava/lang/String; = "DBCO_ICUSO"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "DBCO_TMULTIMAALTERACAO"

.field public static final VALOR:Ljava/lang/String; = "DBCO_VALOR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
