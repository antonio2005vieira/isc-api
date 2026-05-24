.class public Lcom/br/ipad/isc/controladores/ControladorContaOracle;
.super Lcom/br/ipad/isc/controladores/ControladorConta;
.source "ControladorContaOracle.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/controladores/ControladorContaOracle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorConta;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorContaOracle;
    .locals 1

    .line 21
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorContaOracle;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorContaOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    .line 24
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorContaOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    return-object v0
.end method
