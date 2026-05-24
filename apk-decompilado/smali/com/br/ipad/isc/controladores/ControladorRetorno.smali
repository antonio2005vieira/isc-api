.class public Lcom/br/ipad/isc/controladores/ControladorRetorno;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorRetorno.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorRetorno;


# static fields
.field private static final REGISTER_TYPE_1:Ljava/lang/String; = "01"

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorRetorno;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method private generateRegisterType1(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "01"

    .line 81
    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->stringPipe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorRetorno;
    .locals 1

    .line 38
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorRetorno;->instance:Lcom/br/ipad/isc/controladores/ControladorRetorno;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorRetorno;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorRetorno;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public geraRetornoImovel(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorRetorno;->generateRegisterType1(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISC"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorRetorno;->instance:Lcom/br/ipad/isc/controladores/ControladorRetorno;

    return-void
.end method
