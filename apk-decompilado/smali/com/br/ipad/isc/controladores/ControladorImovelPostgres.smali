.class public Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;
.super Lcom/br/ipad/isc/controladores/ControladorImovel;
.source "ControladorImovelPostgres.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorImovel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;
    .locals 1

    .line 19
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;

    .line 22
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;->instance:Lcom/br/ipad/isc/controladores/ControladorImovelPostgres;

    return-object v0
.end method
