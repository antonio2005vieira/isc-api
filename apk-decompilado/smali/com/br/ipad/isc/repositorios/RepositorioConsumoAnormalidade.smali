.class public Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "RepositorioConsumoAnormalidade.java"

# interfaces
.implements Lcom/br/ipad/isc/repositorios/IRepositorioConsumoAnormalidade;


# static fields
.field private static instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;
    .locals 1

    .line 13
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    .line 16
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    return-object v0
.end method


# virtual methods
.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;->instancia:Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnormalidade;

    return-void
.end method
