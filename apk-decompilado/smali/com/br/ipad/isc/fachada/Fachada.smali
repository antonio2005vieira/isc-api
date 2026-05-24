.class public Lcom/br/ipad/isc/fachada/Fachada;
.super Ljava/lang/Object;
.source "Fachada.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/fachada/Fachada;


# instance fields
.field private controladorAlertaValidarErro:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

.field private controladorAlertaValidarFoto:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;

.field private controladorAlertaValidarMensagemConexao:Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;

.field private controladorBasico:Lcom/br/ipad/isc/controladores/IControladorBasico;

.field private controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

.field private controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;

.field private controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

.field private controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

.field private controladorConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;

.field private controladorConta:Lcom/br/ipad/isc/controladores/IControladorConta;

.field private controladorContaCategoria:Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

.field private controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

.field private controladorContaDebito:Lcom/br/ipad/isc/controladores/IControladorContaDebito;

.field private controladorContaImposto:Lcom/br/ipad/isc/controladores/IControladorContaImposto;

.field private controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

.field private controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

.field private controladorFoto:Lcom/br/ipad/isc/controladores/IControladorFoto;

.field private controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

.field private controladorImovelConta:Lcom/br/ipad/isc/controladores/IControladorImovelConta;

.field private controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

.field private controladorImpressao:Lcom/br/ipad/isc/controladores/IControladorImpressao;

.field private controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

.field private controladorLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;

.field private controladorLogFinalizacao:Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;

.field private controladorQualidadeAgua:Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

.field private controladorSistemaParametros:Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getControladorAlertaValidarMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZI)Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;
    .locals 7

    .line 284
    new-instance v6, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZI)V

    iput-object v6, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorAlertaValidarMensagemConexao:Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;

    return-object v6
.end method

.method private getControladorAlertaValidarMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;)Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;
    .locals 8

    .line 276
    new-instance v7, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarMensagemConexao;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;)V

    iput-object v7, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorAlertaValidarMensagemConexao:Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;

    return-object v7
.end method

.method private getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorBasico:Lcom/br/ipad/isc/controladores/IControladorBasico;

    if-nez v0, :cond_0

    .line 1642
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorBasico:Lcom/br/ipad/isc/controladores/IControladorBasico;

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorBasico:Lcom/br/ipad/isc/controladores/IControladorBasico;

    return-object v0
.end method

.method private getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCategoriaSubcategoria;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCategoriaSubcategoria:Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    return-object v0
.end method

.method private getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;

    if-nez v0, :cond_0

    .line 298
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnormalidadeAcao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnormalidadeAcao:Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;

    return-object v0
.end method

.method private getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoAnteriores;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoAnteriores:Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    return-object v0
.end method

.method private getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoHistorico:Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

    return-object v0
.end method

.method private getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;
    .locals 2

    .line 243
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaOracle;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaOracle;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConta:Lcom/br/ipad/isc/controladores/IControladorConta;

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaPostgres;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaPostgres;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConta:Lcom/br/ipad/isc/controladores/IControladorConta;

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConta:Lcom/br/ipad/isc/controladores/IControladorConta;

    return-object v0
.end method

.method private getControladorContaCategoria()Lcom/br/ipad/isc/controladores/IControladorContaCategoria;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoria;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoria;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoria:Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

    return-object v0
.end method

.method private getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaCategoriaConsumoFaixa:Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    return-object v0
.end method

.method private getControladorContaDebito()Lcom/br/ipad/isc/controladores/IControladorContaDebito;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaDebito:Lcom/br/ipad/isc/controladores/IControladorContaDebito;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaDebito;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaDebito;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaDebito:Lcom/br/ipad/isc/controladores/IControladorContaDebito;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaDebito:Lcom/br/ipad/isc/controladores/IControladorContaDebito;

    return-object v0
.end method

.method private getControladorContaImposto()Lcom/br/ipad/isc/controladores/IControladorContaImposto;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaImposto:Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorContaImposto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorContaImposto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaImposto:Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorContaImposto:Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    return-object v0
.end method

.method private getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorCreditoRealizado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorCreditoRealizado:Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    return-object v0
.end method

.method private getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorDebitoCobrado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorDebitoCobrado:Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    return-object v0
.end method

.method private getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorFoto:Lcom/br/ipad/isc/controladores/IControladorFoto;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getInstance()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorFoto:Lcom/br/ipad/isc/controladores/IControladorFoto;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorFoto:Lcom/br/ipad/isc/controladores/IControladorFoto;

    return-object v0
.end method

.method private getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorHidrometroInstalado:Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    return-object v0
.end method

.method private getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelRevisitar;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelRevisitar:Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    return-object v0
.end method

.method private getControladorImpressao()Lcom/br/ipad/isc/controladores/IControladorImpressao;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImpressao:Lcom/br/ipad/isc/controladores/IControladorImpressao;

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImpressao:Lcom/br/ipad/isc/controladores/IControladorImpressao;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImpressao:Lcom/br/ipad/isc/controladores/IControladorImpressao;

    return-object v0
.end method

.method private getControladorLigacaoAguaSituacaoConsumoTipo()Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLigacaoAguaSituacaoConsumoTipo;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLigacaoAguaSituacaoConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;

    return-object v0
.end method

.method private getControladorLogFinalizacao()Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLogFinalizacao:Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLogFinalizacao;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLogFinalizacao:Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLogFinalizacao:Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;

    return-object v0
.end method

.method private getControladorQualidadeAgua()Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorQualidadeAgua:Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorQualidadeAgua;->getInstance()Lcom/br/ipad/isc/controladores/ControladorQualidadeAgua;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorQualidadeAgua:Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorQualidadeAgua:Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    return-object v0
.end method

.method private getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->getInstance()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorSistemaParametros:Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    return-object v0
.end method

.method public static getInstance()Lcom/br/ipad/isc/fachada/Fachada;
    .locals 1

    .line 316
    sget-object v0, Lcom/br/ipad/isc/fachada/Fachada;->instance:Lcom/br/ipad/isc/fachada/Fachada;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/br/ipad/isc/fachada/Fachada;

    invoke-direct {v0}, Lcom/br/ipad/isc/fachada/Fachada;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/fachada/Fachada;->instance:Lcom/br/ipad/isc/fachada/Fachada;

    .line 319
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/fachada/Fachada;->instance:Lcom/br/ipad/isc/fachada/Fachada;

    return-object v0
.end method

.method private getcontroladorConsumoTipo()Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorConsumoTipo;->getInstance()Lcom/br/ipad/isc/controladores/ControladorConsumoTipo;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorConsumoTipo:Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .line 323
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->setContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public alertaMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1404
    invoke-direct/range {p0 .. p5}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZI)Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;

    move-result-object p1

    .line 1405
    invoke-interface {p1, p6, p7, p8}, Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    return-void
.end method

.method public anormalidadeConsumoExigeFoto(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1997
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorFoto;->anormalidadeConsumoExigeFoto(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public anormalidadeLeituraExigeFoto(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1993
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorFoto;->anormalidadeLeituraExigeFoto(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)Z

    move-result p1

    return p1
.end method

.method public apagarBanco()V
    .locals 1

    .line 1771
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorBasico;->apagarBanco()V

    return-void
.end method

.method public atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1654
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1656
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarArquivoCarregadoBD()V
    .locals 2

    .line 1306
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarArquivoCarregadoBD()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1308
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public atualizarDadosImovelMacro(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 1

    .line 1078
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarDadosImovelMacro(Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1080
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2122
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2124
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 1926
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->atualizarIndicadorContinuaImpressao(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1928
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public atualizarIndicadorImovelCalculado(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1634
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->atualizarIndicadorImovelCalculado(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1636
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public atualizarIndicadorImovelCondominioNaoCalculado(Ljava/lang/Integer;)V
    .locals 1

    .line 1911
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->atualizarIndicadorImovelCondominioNaoCalculado(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1913
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1533
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarIndicadorRotaMarcacaoAtiva(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1535
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atualizarPosicao()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2114
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->atualizarPosicao()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2116
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public atualizarQntImoveis()V
    .locals 2

    .line 1038
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarQntImoveis()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1040
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V
    .locals 1

    .line 1547
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->atualizarRoteiroOnlineOffline(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1549
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/CategoriaSubcategoria;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 366
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2068
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoAnormalidadeAcao()Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorConsumoAnormalidadeAcao;->buscarConsumoAnormalidadeAcao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2071
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2083
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnormalidade(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2086
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 397
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/br/ipad/isc/bean/ConsumoAnteriores;",
            ">;"
        }
    .end annotation

    .line 2138
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoAnteriores()Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorConsumoAnteriores;->buscarConsumoAnterioresPorImovelTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2140
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 490
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;
    .locals 1

    .line 2130
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getcontroladorConsumoTipo()Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorConsumoTipo;->buscarConsumoTipoPorId(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoTipo;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2132
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorContaCategoria;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 507
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/ContaImposto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaImposto()Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaImposto;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 426
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 566
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 568
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ContaDebito;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaDebito()Lcom/br/ipad/isc/controladores/IControladorContaDebito;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaDebito;->buscarContasDebitosPorIdImovel(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 537
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/CreditoRealizado;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;->buscarCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 441
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/br/ipad/isc/bean/DebitoCobrado;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;->buscarDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 456
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2055
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2057
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2018
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2020
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;,
            Lcom/br/ipad/isc/excecoes/NegocioException;
        }
    .end annotation

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 336
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;,
            Lcom/br/ipad/isc/excecoes/NegocioException;
        }
    .end annotation

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 350
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .line 2033
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2035
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotosAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;,
            Lcom/br/ipad/isc/excecoes/NegocioException;
        }
    .end annotation

    .line 2098
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotosAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2100
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarFotosPendentes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;,
            Lcom/br/ipad/isc/excecoes/NegocioException;
        }
    .end annotation

    .line 1783
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorFoto;->buscarFotosPendentes()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1785
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 471
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 473
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarIdsImoveisCalculados()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1824
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarIdsImoveisCalculados()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1826
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarIdsImoveisLidos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1335
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarIdsImoveisLidos()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1337
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarIdsImoveisLidosNaoEnviados()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1321
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarIdsImoveisLidosNaoEnviados()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1323
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarIdsImoveisLidosNaoEnviados(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1350
    invoke-direct/range {p0 .. p6}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarMensagemConexao(Lcom/br/ipad/isc/bean/ImovelConta;BBZILjava/lang/String;)Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;

    move-result-object p1

    invoke-interface {p1, p7, p8, p9}, Lcom/br/ipad/isc/controladores/IControladorAlertaValidarMensagemConexao;->defineAlerta(ILjava/lang/String;I)Z

    return-void
.end method

.method public buscarIdsImoveisLidosNaoEnviadosNaoCondominio()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1619
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarIdsImoveisLidosNaoEnviadosNaoCondominio()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1621
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarIdsImoveisLidosNaoImpressos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1955
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarIdsImoveisLidosNaoImpressos()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1957
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImoveisOrdenadosNovos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .line 1877
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImoveisOrdenadosNovos()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1879
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImovelContaPorHidrometro(Ljava/lang/String;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 959
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContaPorHidrometro(Ljava/lang/String;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 961
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarImovelContaPorPosicao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContaPorPosicao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1031
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarImovelContaPorQuadra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 976
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContaPorQuadra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 978
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 730
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 733
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarImovelContaSequencial(I)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 2

    .line 1295
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContaSequencial(I)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1297
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 1298
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarImovelContas()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContas()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 702
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImovelContasLidos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContasLidos()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 790
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImovelContasNaoLidos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 935
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarImovelContasNaoLidos()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 937
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImovelNaoRevisitado()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelRevisitar;",
            ">;"
        }
    .end annotation

    .line 1564
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1566
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;
    .locals 1

    .line 1165
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;->buscarImovelRevisitarPorImovel(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelRevisitar;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1167
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 857
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorLeituraAnormalidade()Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;->buscarLeituraAnormalidadeImovel(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 859
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1728
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorLeituraAnormalidade()Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;->buscarLeituraAnormalidadePorIdComUsoAtivo(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1730
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarLeituraHidrometroTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 996
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;->buscarLeituraHidrometroTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 998
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/LeituraAnormalidade;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1737
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorLeituraAnormalidade()Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;->buscarLeiturasAnormalidadesComUsoAtivo()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1739
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarLogradouros()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2091
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarLogradouros()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2093
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarPrimeiroImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1855
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarPrimeiroImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1857
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarQuadras()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1518
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarQuadras()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1520
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 805
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorQualidadeAgua()Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;->buscarQualidadeAguaPorLocalidade(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 807
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 821
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorQualidadeAgua()Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;->buscarQualidadeAguaPorLocalidadeSetorComercial(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 823
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public buscarQualidadeAguaSemLocalidade()Lcom/br/ipad/isc/bean/QualidadeAgua;
    .locals 2

    .line 1987
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorQualidadeAgua()Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorQualidadeAgua;->buscarQualidadeAguaSemLocalidade()Lcom/br/ipad/isc/bean/QualidadeAgua;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1989
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 409
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->buscarSistemaParametro()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 411
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buscarTodosImoveisComApenasGuia()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2172
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->buscarTodosImoveisComApenasGuia()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2174
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .line 744
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorConta;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 746
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public calcularContaTeste(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .line 757
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorConta;->calcularContaTeste(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 759
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public calcularEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/br/ipad/isc/fachada/Fachada$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/br/ipad/isc/fachada/Fachada$1;-><init>(Lcom/br/ipad/isc/fachada/Fachada;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 775
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public carregaLinhaParaBD(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1764
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorBasico;->carregaLinhaParaBD(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1766
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defineAlertaErro(Lcom/br/ipad/isc/bean/ImovelConta;ILjava/lang/String;I)V
    .locals 0

    .line 1600
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorAlertaValidarErro(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;->defineAlerta(ILjava/lang/String;I)Z

    return-void
.end method

.method public efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;
    .locals 1

    .line 1064
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/IControladorConta;->efetuarRateio(Lcom/br/ipad/isc/bean/ImovelConta;ZLjava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1066
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public enviarAoCalcular(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->enviarAoCalcular(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 717
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enviarAoFinalizar(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1723
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->enviarAoFinalizar(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    return p1
.end method

.method public enviarEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1388
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->enviarEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1390
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enviarFotosOnline(Lcom/br/ipad/isc/bean/Foto;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;,
            Lcom/br/ipad/isc/excecoes/NegocioException;
        }
    .end annotation

    .line 1798
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorFoto;->enviarFotosOnline(Lcom/br/ipad/isc/bean/Foto;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1800
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enviarFotosOnline(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1

    .line 1810
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorFoto;->enviarFotosOnline(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1812
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public existeImovelImpresso(Ljava/lang/Integer;)Z
    .locals 2

    .line 1265
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->existeImovelImpresso(Ljava/lang/Integer;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1267
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 1268
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatarInscricao(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->formatarInscricao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatarRota(Ljava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->formatarRota(Ljava/lang/String;Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getControladorAlertaValidarErro()Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;
    .locals 1

    .line 1606
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorAlertaValidarErro:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    return-object v0
.end method

.method public getControladorAlertaValidarErro(Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;
    .locals 1

    .line 1585
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;)V

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorAlertaValidarErro:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarErro;

    return-object v0
.end method

.method public getControladorAlertaValidarFoto(Lcom/br/ipad/isc/gui/TabsActivity;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;ZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;
    .locals 12

    .line 1593
    new-instance v11, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;-><init>(Lcom/br/ipad/isc/gui/TabsActivity;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;ZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    iput-object v11, v0, Lcom/br/ipad/isc/fachada/Fachada;->controladorAlertaValidarFoto:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;

    return-object v11
.end method

.method public getControladorCategoriaSubcategoria(Ljava/lang/Integer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 552
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelConta:Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->getInstance()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelConta:Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorImovelConta:Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    return-object v0
.end method

.method public getControladorLeituraAnormalidade()Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;->getInstance()Lcom/br/ipad/isc/controladores/ControladorLeituraAnormalidade;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada;->controladorLeituraAnormalidade:Lcom/br/ipad/isc/controladores/IControladorLeituraAnormalidade;

    return-object v0
.end method

.method public getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->getDescricaoSitLigacaoAgua(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->getDescricaoSitLigacaoEsgoto(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getQtdImoveisComApenasGuias()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2190
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->getQtdImoveisComApenasGuias()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2192
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1975
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorFoto()Lcom/br/ipad/isc/controladores/IControladorFoto;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorFoto;->imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1977
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public imprimirExtratoMacro(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1

    .line 1153
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImpressao()Lcom/br/ipad/isc/controladores/IControladorImpressao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorImpressao;->imprimirExtratoMacro(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1155
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public insereLogFinalizacao(Ljava/lang/String;)V
    .locals 1

    .line 1968
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorLogFinalizacao()Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorLogFinalizacao;->inserir(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1970
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1680
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 1682
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inverterRoteiro()V
    .locals 2

    .line 1577
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->inverterRoteiro()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1579
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isMotoralaDefyPro(Landroid/content/Context;)Z
    .locals 1

    .line 1868
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "XT560"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOrientacaoLandscape(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "window"

    .line 1750
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1751
    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2048
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;->obterCategoriaPrincipal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2050
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1120
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorConsumoHistorico;->obterConsumoImoveisMicro(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1122
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 1246
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterIdUltimoImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1248
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    .line 1249
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 1106
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterImovelAreaComum(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1108
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterIndicadorPermiteContinuarImpressao(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1942
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterIndicadorPermiteContinuarImpressao(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1944
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorConta;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result p1

    return p1
.end method

.method public obterPosicaoImovelCondominioNaoCalculado(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterPosicaoImovelCondominioNaoCalculado(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1139
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1193
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaImposto()Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaImposto;->obterQntContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1195
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1201
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;->obterQntCreditoRealizadoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1203
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQntDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1185
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;->obterQntDebitoCobradoPorImovelId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1187
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1092
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCategoriaSubcategoria()Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCategoriaSubcategoria;->obterQuantidadeEconomiasTotal(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1094
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadeImoveis()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1416
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->getQtdImoveis()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1418
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public obterQuantidadeImoveisNaoVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1503
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImoveisNaoVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1505
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadeImoveisPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1473
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImoveisPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1475
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadeImoveisVisitados()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1430
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImoveisVisitados()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1432
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public obterQuantidadeImoveisVisitadosComAnormalidade()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1444
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImoveisVisitadosComAnormalidade()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1446
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public obterQuantidadeImoveisVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1488
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImoveisVisitadosPorQuadra(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1490
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1373
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadeImovelMicro(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1375
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterQuantidadesImoveisLidos()Ljava/lang/Integer;
    .locals 2

    .line 1280
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterQuantidadesImoveisLidos()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1282
    new-instance v1, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public obterSomaValorAguaEsgoto(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2010
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterSomaValorAguaEsgoto(Ljava/lang/Integer;)D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2012
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;->obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 381
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public obterTotalConsumoContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 1

    .line 1209
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    .line 1210
    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;->obterTotalConsumoContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1212
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterTotalValorTarifaContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 1

    .line 1218
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaCategoriaConsumoFaixa()Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;

    move-result-object v0

    .line 1219
    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaCategoriaConsumoFaixa;->obterTotalValorTarifaContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1221
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorConta(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 888
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorConta;->obterValorConta(Ljava/lang/Integer;)D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 890
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorContaAguaEsgoto(Ljava/lang/Integer;)D
    .locals 2

    .line 2146
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterValorContaAguaEsgoto(Ljava/lang/Integer;)D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2148
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorContaSemCreditos(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterValorContaSemCreditos(Ljava/lang/Integer;)D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 644
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorContaSemImposto(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 671
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->obterValorContaSemImposto(Ljava/lang/Integer;)D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 673
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorCreditoRealizado()Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorCreditoRealizado;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 522
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorDebitoTotal(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 686
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorDebitoCobrado()Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorDebitoCobrado;->obterValorDebitoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 688
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorImpostoTotal(Ljava/lang/Integer;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 609
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaImposto()Lcom/br/ipad/isc/controladores/IControladorContaImposto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorContaImposto;->obterValorImpostoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 611
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorContaCategoria()Lcom/br/ipad/isc/controladores/IControladorContaCategoria;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorContaCategoria;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 628
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ordenarImovelContaPorLogradouro(Ljava/lang/String;III)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/ImovelConta;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2105
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->ordenarImovelContaPorLogradouro(Ljava/lang/String;III)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2107
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1

    .line 1015
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorConta;->permiteImprimir(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1017
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public permiteImprimir2ViaImovelMicro(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1841
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->verificarRateioCondominio(Ljava/lang/Integer;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1843
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1709
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorBasico;->pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1711
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;
    .locals 1

    .line 2155
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorLigacaoAguaSituacaoConsumoTipo()Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorLigacaoAguaSituacaoConsumoTipo;->pesquisarLigacaoAguaSituacaoConsumoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2157
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/br/ipad/isc/bean/ObjetoBasico;",
            ">(",
            "Ljava/lang/Integer;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1695
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1697
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1667
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorBasico;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1669
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMatriculasRevisitar(Ljava/lang/String;)V
    .locals 1

    .line 1177
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelRevisitar()Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelRevisitar;->setMatriculasRevisitar(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1179
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validaSenhaAdm(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 943
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->validaSenhaAdm(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 945
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validaSenhaApagar(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorSistemaParametros;->validaSenhaApagar(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 923
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 872
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 874
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1364
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->verificarBloqueioRecalcularConta(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1366
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 2164
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorConta()Lcom/br/ipad/isc/controladores/IControladorConta;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/br/ipad/isc/controladores/IControladorConta;->verificarConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;I)Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2166
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public verificarExistenciaBancoDeDados()Z
    .locals 1

    .line 1759
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorBasico()Lcom/br/ipad/isc/controladores/IControladorBasico;

    move-result-object v0

    invoke-interface {v0}, Lcom/br/ipad/isc/controladores/IControladorBasico;->verificarExistenciaBancoDeDados()Z

    move-result v0

    return v0
.end method

.method public verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 1

    .line 1233
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImpressao()Lcom/br/ipad/isc/controladores/IControladorImpressao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImpressao;->verificarExistenciaImpressora(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result p1

    return p1
.end method

.method public verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 906
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImpressao()Lcom/br/ipad/isc/controladores/IControladorImpressao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/br/ipad/isc/controladores/IControladorImpressao;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 908
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public verificarImpressaoGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 2181
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImpressao()Lcom/br/ipad/isc/controladores/IControladorImpressao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/br/ipad/isc/controladores/IControladorImpressao;->verificarImpressaoGuia(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2183
    new-instance p2, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public verificarRateioCondominio(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/FachadaException;
        }
    .end annotation

    .line 1894
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/fachada/Fachada;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/IControladorImovelConta;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/br/ipad/isc/controladores/IControladorImovelConta;->verificarRateioCondominio(Ljava/lang/Integer;)Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1896
    new-instance v0, Lcom/br/ipad/isc/excecoes/FachadaException;

    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/excecoes/FachadaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
