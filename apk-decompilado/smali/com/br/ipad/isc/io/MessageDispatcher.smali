.class public Lcom/br/ipad/isc/io/MessageDispatcher;
.super Ljava/lang/Object;
.source "MessageDispatcher.java"


# static fields
.field public static final CARACTER_FIM_PARAMETRO:C = '&'

.field public static final PARAMETRO_ARQUIVO_ROTEIRO:Ljava/lang/String; = "arquivoRoteiro="

.field public static final PARAMETRO_TIPO_ARQUIVO:Ljava/lang/String; = "tipoArquivo="

.field private static instancia:Lcom/br/ipad/isc/io/MessageDispatcher;


# instance fields
.field private fileLength:I

.field private tipoArquivo:C


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstancia()Lcom/br/ipad/isc/io/MessageDispatcher;
    .locals 1

    .line 43
    sget-object v0, Lcom/br/ipad/isc/io/MessageDispatcher;->instancia:Lcom/br/ipad/isc/io/MessageDispatcher;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/br/ipad/isc/io/MessageDispatcher;

    invoke-direct {v0}, Lcom/br/ipad/isc/io/MessageDispatcher;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/io/MessageDispatcher;->instancia:Lcom/br/ipad/isc/io/MessageDispatcher;

    .line 47
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/io/MessageDispatcher;->instancia:Lcom/br/ipad/isc/io/MessageDispatcher;

    return-object v0
.end method


# virtual methods
.method public controlarParametros(Ljava/lang/StringBuffer;CLjava/lang/StringBuffer;Z)Z
    .locals 5

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tipoArquivo="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xc

    if-le v0, v4, :cond_3

    const/16 v0, 0x26

    if-eq p2, v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v3, :cond_2

    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/io/MessageDispatcher;->setTipoArquivo(C)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method

.method public getFileLength()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/br/ipad/isc/io/MessageDispatcher;->fileLength:I

    return v0
.end method

.method public getTipoArquivo()C
    .locals 1

    .line 88
    iget-char v0, p0, Lcom/br/ipad/isc/io/MessageDispatcher;->tipoArquivo:C

    return v0
.end method

.method public setFileLength(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/br/ipad/isc/io/MessageDispatcher;->fileLength:I

    return-void
.end method

.method public setTipoArquivo(C)V
    .locals 0

    .line 84
    iput-char p1, p0, Lcom/br/ipad/isc/io/MessageDispatcher;->tipoArquivo:C

    return-void
.end method
