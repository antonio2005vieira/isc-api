.class Lcom/br/ipad/isc/util/Teste;
.super Ljava/lang/Object;
.source "TesteGeral.java"


# instance fields
.field private agua:D

.field private credito:D

.field private debito:D

.field private esgoto:D

.field private imovelId:I

.field private imposto:D

.field private leituraAgua:I

.field private leituraPoco:I

.field private total:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValorContaSemImposto()D
    .locals 5

    .line 174
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->agua:D

    iget-wide v2, p0, Lcom/br/ipad/isc/util/Teste;->esgoto:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/br/ipad/isc/util/Teste;->debito:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/br/ipad/isc/util/Teste;->credito:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const/4 v2, 0x2

    .line 180
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public atualizarTotal()V
    .locals 5

    .line 166
    invoke-direct {p0}, Lcom/br/ipad/isc/util/Teste;->getValorContaSemImposto()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/br/ipad/isc/util/Teste;->imposto:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const/4 v2, 0x2

    .line 170
    invoke-static {v0, v1, v2}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->total:D

    return-void
.end method

.method public getAgua()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->agua:D

    return-wide v0
.end method

.method public getCredito()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->credito:D

    return-wide v0
.end method

.method public getDebito()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->debito:D

    return-wide v0
.end method

.method public getEsgoto()D
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->esgoto:D

    return-wide v0
.end method

.method public getImovelId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/br/ipad/isc/util/Teste;->imovelId:I

    return v0
.end method

.method public getImposto()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->imposto:D

    return-wide v0
.end method

.method public getLeituraAgua()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/br/ipad/isc/util/Teste;->leituraAgua:I

    return v0
.end method

.method public getLeituraPoco()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/br/ipad/isc/util/Teste;->leituraPoco:I

    return v0
.end method

.method public getTotal()D
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/br/ipad/isc/util/Teste;->total:D

    return-wide v0
.end method

.method public setAgua(D)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->agua:D

    return-void
.end method

.method public setCredito(D)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->credito:D

    return-void
.end method

.method public setDebito(D)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->debito:D

    return-void
.end method

.method public setEsgoto(D)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->esgoto:D

    return-void
.end method

.method public setImovelId(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/br/ipad/isc/util/Teste;->imovelId:I

    return-void
.end method

.method public setImposto(D)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->imposto:D

    return-void
.end method

.method public setLeituraAgua(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/br/ipad/isc/util/Teste;->leituraAgua:I

    return-void
.end method

.method public setLeituraPoco(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/br/ipad/isc/util/Teste;->leituraPoco:I

    return-void
.end method

.method public setTotal(D)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/br/ipad/isc/util/Teste;->total:D

    return-void
.end method
