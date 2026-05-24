.class public Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorHidrometroInstalado.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorHidrometroInstalado;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;


# instance fields
.field private repositorioHidrometroInstalado:Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;
    .locals 2

    .line 38
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->instance:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->instance:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    .line 40
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->repositorioHidrometroInstalado:Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;

    .line 43
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->instance:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    return-object v0
.end method


# virtual methods
.method public buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->repositorioHidrometroInstalado:Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 55
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buscarLeituraHidrometroTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->repositorioHidrometroInstalado:Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioHidrometroInstalado;->buscarLeituraHidrometroTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 66
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object p2, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obterTombamento(Lcom/br/ipad/isc/bean/ImovelConta;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTombamento()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTombamento()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTombamento()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->instance:Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 47
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->context:Landroid/content/Context;

    return-void
.end method

.method public validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move/from16 v1, p3

    const-string v2, "86"

    .line 90
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    .line 98
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const-string v5, "\u00e1gua"

    goto :goto_0

    :cond_0
    const-string v5, "po\u00e7o"

    :goto_0
    move-object v8, v5

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 115
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_2

    .line 116
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v9

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v11}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    invoke-virtual {v9, v10, v11}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    goto :goto_2

    :cond_2
    move-object v9, v6

    .line 121
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    const/4 v10, 0x1

    .line 129
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v12

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v13

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_6

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_4

    if-ge v1, v7, :cond_4

    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_6

    .line 145
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorAceitaLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorAceitaLeitura()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v7, :cond_6

    if-ge v1, v11, :cond_6

    .line 147
    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 148
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Informe a Leitura da Anormalidade de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v11}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 134
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leitura e anormalidade de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " em branco!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v7}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 163
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_7

    .line 166
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorAceitaLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 167
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorAceitaLeitura()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v11, :cond_7

    const/4 v14, 0x3

    if-ge v1, v14, :cond_7

    .line 169
    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 170
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Essa anormalidade de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " n\u00e3o pode ter leitura!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v14}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_7
    const-string v14, "Leitura de "

    if-eqz v5, :cond_a

    .line 185
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v15, v12, :cond_8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_a

    .line 189
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorDigitada()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 192
    invoke-virtual {v5, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 194
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_5

    :cond_9
    const/4 v12, 0x4

    if-ge v1, v12, :cond_a

    .line 198
    invoke-virtual {v0, v6}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 199
    invoke-virtual {v0, v5}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeituraAnteriorDigitada(Ljava/lang/Integer;)V

    .line 201
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fora de faixa!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v12}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    .line 223
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_b

    const/4 v12, 0x5

    if-ge v1, v12, :cond_b

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " negativa!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v12}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 233
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_11

    if-eqz v10, :cond_11

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v7}, Lcom/br/ipad/isc/util/Util;->subtrairMesDoAnoMes(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 245
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;

    move-result-object v6

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v10

    .line 245
    invoke-virtual {v6, v8, v5, v10}, Lcom/br/ipad/isc/repositorios/RepositorioConsumoAnteriores;->buscarConsumoAnterioresPorImovelAnoMesPorTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    move-result-object v5

    .line 249
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    if-eqz v5, :cond_d

    .line 250
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_d

    :cond_c
    const/4 v8, 0x6

    if-ge v1, v8, :cond_d

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 268
    :cond_d
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v5, :cond_e

    .line 269
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_e

    .line 270
    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;->getAnormalidadeLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v8, 0x7

    if-ge v1, v8, :cond_e

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 275
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 283
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLocalInstalacao()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CALCADA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 286
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorCalcadaMensagem()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v8, 0x8

    if-ge v1, v8, :cond_f

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 299
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeituraAnterior()Ljava/util/Date;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataInstalacaoHidrometro()Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Lcom/br/ipad/isc/util/Util;->compararData(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    if-ne v2, v7, :cond_10

    const/4 v2, -0x1

    if-ne v5, v2, :cond_10

    .line 304
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorHidrometroMensagem()Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v8, 0x9

    if-ge v1, v8, :cond_10

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    :cond_10
    if-eqz v9, :cond_11

    .line 315
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorUso()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v5, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_11

    const/16 v8, 0xa

    if-ge v1, v8, :cond_11

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v7, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 331
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_12

    const/16 v8, 0xb

    if-ge v1, v8, :cond_12

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v2

    .line 334
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 336
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v5, v2, :cond_12

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 343
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 352
    :cond_12
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object v2

    const-string v4, "6"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorFaturamento()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 354
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraAnteriorInformada()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_14
    const/16 v8, 0xc

    if-ge v1, v8, :cond_17

    .line 356
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->VOLUME_MINIMO_ESGOTO:Ljava/lang/Integer;

    if-eq v1, v2, :cond_15

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getConsumoMinEsgoto()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_17

    .line 358
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getTipoPoco()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_17

    .line 360
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorAlertaValidarLeitura(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v8}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarLeitura;->defineAlerta(ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 370
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_19

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorHidrometroInstalado()Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;

    move-result-object v0

    const/4 v4, 0x0

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->validarLeituraMensagem(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;IZZ)Z

    move-result v0

    goto :goto_6

    .line 376
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorConta()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_6

    .line 379
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->getControladorConta()Lcom/br/ipad/isc/controladores/ControladorConta;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConta;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    return v0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 393
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v0, Lcom/br/ipad/isc/excecoes/ControladorException;

    sget-object v1, Lcom/br/ipad/isc/controladores/ControladorHidrometroInstalado;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
