.class public final Lcom/br/ipad/isc/bean/LeituraAnormalidade$LeiturasAnormalidades;
.super Ljava/lang/Object;
.source "LeituraAnormalidade.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/LeituraAnormalidade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeiturasAnormalidades"
.end annotation


# static fields
.field public static final DESCRICAOLEITURAANORMALIDADE:Ljava/lang/String; = "LTAN_DSLEITURAANORMALIDADE"

.field public static final DESCRICAOMENSAGEMCONTA:Ljava/lang/String; = "LTAN_DESCRICAOMENSAGEMCONTA"

.field public static final ID:Ljava/lang/String; = "LTAN_ID"

.field public static final IDCONSUMOACOBRARCOMLEITURA:Ljava/lang/String; = "LACS_IDCONSACOBRARCOMLEIT"

.field public static final IDCONSUMOACOBRARSEMLEITURA:Ljava/lang/String; = "LACS_IDCONSACOBRARSEMLEIT"

.field public static final IDLEITURAANORMALIDADECOMLEITURA:Ljava/lang/String; = "LALT_IDLEITAFATURARCOMLEIT"

.field public static final IDLEITURAANORMALIDADESEMLEITURA:Ljava/lang/String; = "LALT_IDLEITAFATURARSEMLEIT"

.field public static final INDICADORCALCADAMENSAGEM:Ljava/lang/String; = "LTAN_ICCALCADAMSG"

.field public static final INDICADORFOTOOBRIGATORIA:Ljava/lang/String; = "LTAN_ICFOTOOBRIGATORIA"

.field public static final INDICADORHIDROMETROMENSAGEM:Ljava/lang/String; = "LTAN_ICSUBSHIDROMETRORMSG"

.field public static final INDICADORLEITURA:Ljava/lang/String; = "LTAN_ICLEITURA"

.field public static final INDICADORNAOIMPRIMIRCONTA:Ljava/lang/String; = "LTAN_ICNAOIMPRIMIRCONTA"

.field public static final INDICADORNOTIFICACLIENTE:Ljava/lang/String; = "LTAN_ICNOTIFICACLIENTE"

.field public static final INDICADORUSO:Ljava/lang/String; = "LTAN_ICUSO"

.field public static final INDICADORUSOSISTEMA:Ljava/lang/String; = "LTAN_ICUSOSISTEMA"

.field public static final NAO_INFORMADA:I = 0x0

.field public static final NUMEROFATORCOMLEITURA:Ljava/lang/String; = "LTAN_NNFATORCOMLEITURA"

.field public static final NUMEROFATORSEMLEITURA:Ljava/lang/String; = "LTAN_NNFATORSEMLEITURA"

.field public static final ULTIMAALTERACAO:Ljava/lang/String; = "LTAN_TMULTIMAALTERACAO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
