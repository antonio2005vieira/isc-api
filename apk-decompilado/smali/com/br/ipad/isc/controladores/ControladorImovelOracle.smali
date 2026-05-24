.class public Lcom/br/ipad/isc/controladores/ControladorImovelOracle;
.super Lcom/br/ipad/isc/controladores/ControladorImovel;
.source "ControladorImovelOracle.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/controladores/ControladorImovelOracle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelOracle;
    .locals 1

    .line 20
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelOracle;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelOracle;

    .line 23
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelOracle;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelOracle;

    return-object v0
.end method
