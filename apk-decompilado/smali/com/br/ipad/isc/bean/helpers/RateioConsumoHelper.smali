.class public Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;
.super Ljava/lang/Object;
.source "RateioConsumoHelper.java"


# instance fields
.field consumoASerRateadoAgua:I

.field consumoASerRateadoEsgoto:I

.field consumoLigacaoAguaTotal:I

.field consumoLigacaoEsgotoTotal:I

.field consumoMinimoTotal:I

.field private imovelId:I

.field quantidadeEconomiasAguaMedidas:I

.field quantidadeEconomiasAguaNaoMedidas:I

.field quantidadeEconomiasEsgotoMedidas:I

.field quantidadeEconomiasEsgotoNaoMedidas:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaMedidas:I

    .line 29
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaNaoMedidas:I

    .line 30
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoAguaTotal:I

    .line 33
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoMedidas:I

    .line 34
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoNaoMedidas:I

    .line 35
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoEsgotoTotal:I

    .line 38
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoMinimoTotal:I

    .line 39
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoAgua:I

    .line 40
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoEsgoto:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaMedidas:I

    .line 29
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaNaoMedidas:I

    .line 30
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoAguaTotal:I

    .line 33
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoMedidas:I

    .line 34
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoNaoMedidas:I

    .line 35
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoEsgotoTotal:I

    .line 38
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoMinimoTotal:I

    .line 39
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoAgua:I

    .line 40
    iput v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoEsgoto:I

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->imovelId:I

    return-void
.end method


# virtual methods
.method public getConsumoASerRateadoAgua()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoAgua:I

    return v0
.end method

.method public getConsumoASerRateadoEsgoto()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoEsgoto:I

    return v0
.end method

.method public getConsumoLigacaoAguaTotal()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoAguaTotal:I

    return v0
.end method

.method public getConsumoLigacaoEsgotoTotal()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoEsgotoTotal:I

    return v0
.end method

.method public getConsumoMinimoTotal()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoMinimoTotal:I

    return v0
.end method

.method public getImovelId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->imovelId:I

    return v0
.end method

.method public getQuantidadeEconomiasAguaMedidas()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaMedidas:I

    return v0
.end method

.method public getQuantidadeEconomiasAguaNaoMedidas()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaNaoMedidas:I

    return v0
.end method

.method public getQuantidadeEconomiasEsgotoMedidas()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoMedidas:I

    return v0
.end method

.method public getQuantidadeEconomiasEsgotoNaoMedidas()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoNaoMedidas:I

    return v0
.end method

.method public setConsumoASerRateadoAgua(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoAgua:I

    return-void
.end method

.method public setConsumoASerRateadoEsgoto(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoASerRateadoEsgoto:I

    return-void
.end method

.method public setConsumoLigacaoAguaTotal(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoAguaTotal:I

    return-void
.end method

.method public setConsumoLigacaoEsgotoTotal(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoLigacaoEsgotoTotal:I

    return-void
.end method

.method public setConsumoMinimoTotal(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->consumoMinimoTotal:I

    return-void
.end method

.method public setImovelId(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->imovelId:I

    return-void
.end method

.method public setQuantidadeEconomiasAguaMedidas(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaMedidas:I

    return-void
.end method

.method public setQuantidadeEconomiasAguaNaoMedidas(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasAguaNaoMedidas:I

    return-void
.end method

.method public setQuantidadeEconomiasEsgotoMedidas(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoMedidas:I

    return-void
.end method

.method public setQuantidadeEconomiasEsgotoNaoMedidas(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/br/ipad/isc/bean/helpers/RateioConsumoHelper;->quantidadeEconomiasEsgotoNaoMedidas:I

    return-void
.end method
