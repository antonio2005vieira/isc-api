.class public Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;
.super Ljava/lang/Object;
.source "RelatorioPorQuadra.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private numeroQuadra:Ljava/lang/Integer;

.field private totalImoveis:Ljava/lang/Integer;

.field private totalImoveisNaoVisitados:Ljava/lang/Integer;

.field private totalImoveisVisitados:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveis:Ljava/lang/Integer;

    .line 24
    iput-object p2, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisVisitados:Ljava/lang/Integer;

    .line 25
    iput-object p3, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisNaoVisitados:Ljava/lang/Integer;

    .line 26
    iput-object p4, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->numeroQuadra:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getNumeroQuadra()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->numeroQuadra:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalImoveis()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalImoveisNaoVisitados()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisNaoVisitados:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalImoveisVisitados()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisVisitados:Ljava/lang/Integer;

    return-object v0
.end method

.method public setNumeroQuadra(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->numeroQuadra:Ljava/lang/Integer;

    return-void
.end method

.method public setTotalImoveis(Ljava/lang/Integer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveis:Ljava/lang/Integer;

    return-void
.end method

.method public setTotalImoveisNaoVisitados(Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisNaoVisitados:Ljava/lang/Integer;

    return-void
.end method

.method public setTotalImoveisVisitados(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/RelatorioPorQuadra;->totalImoveisVisitados:Ljava/lang/Integer;

    return-void
.end method
