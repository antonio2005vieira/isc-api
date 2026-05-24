.class public final Lcom/br/ipad/isc/bean/ContaDebito$ContasDebitos;
.super Ljava/lang/Object;
.source "ContaDebito.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/ContaDebito;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContasDebitos"
.end annotation


# static fields
.field public static final ANOMESREFERENCIA:Ljava/lang/String; = "CODB_AMREFERCONTA"

.field public static final DATAVENCIMENTOCONTA:Ljava/lang/String; = "CODB_DTVENCICONTA"

.field public static final ID:Ljava/lang/String; = "CODB_ID"

.field public static final MATRICULA:Ljava/lang/String; = "IMOV_ID"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "CODB_TMULTIMAALTERACAO"

.field public static final VALORACRESCIMOIMPONTUALIDADE:Ljava/lang/String; = "CODB_VLACRESIMPONT"

.field public static final VALORCONTA:Ljava/lang/String; = "CODB_VALORCONTA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
