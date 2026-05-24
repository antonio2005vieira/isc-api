.class public Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorConsumoAnormalidade.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidade;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;
    .locals 1

    .line 21
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    .line 25
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    return-object v0
.end method


# virtual methods
.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->instance:Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidade;->context:Landroid/content/Context;

    return-void
.end method
