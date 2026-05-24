.class public Lcom/br/ipad/isc/controladores/ControladorFoto;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ControladorFoto.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorFoto;


# static fields
.field protected static context:Landroid/content/Context;

.field private static instance:Lcom/br/ipad/isc/controladores/ControladorFoto;


# instance fields
.field private repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/controladores/ControladorFoto;
    .locals 2

    .line 43
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorFoto;->instance:Lcom/br/ipad/isc/controladores/ControladorFoto;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorFoto;

    invoke-direct {v0}, Lcom/br/ipad/isc/controladores/ControladorFoto;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorFoto;->instance:Lcom/br/ipad/isc/controladores/ControladorFoto;

    .line 45
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    move-result-object v1

    iput-object v1, v0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    .line 48
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/controladores/ControladorFoto;->instance:Lcom/br/ipad/isc/controladores/ControladorFoto;

    return-object v0
.end method


# virtual methods
.method public anormalidadeConsumoExigeFoto(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public anormalidadeLeituraExigeFoto(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorFotoObrigatoria()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
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
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
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
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2, p3}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotosAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public buscarFotosPendentes()Ljava/util/ArrayList;
    .locals 1
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
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotosPendentes()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public buscarFotosPendentes(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->buscarFotosPendentes(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public enviarFotosOnline(Lcom/br/ipad/isc/bean/Foto;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 169
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    .line 175
    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_LEITURA_ANORMALIDADE:Ljava/lang/Integer;

    :goto_0
    move-object v4, v2

    move-object v5, v3

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    .line 181
    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_CONSUMO_ANORMALIDADE:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v4, v3

    move-object v5, v4

    .line 185
    :goto_1
    new-instance v2, Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v2}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v3

    .line 194
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getFotoTipo()Ljava/lang/Integer;

    move-result-object v6

    .line 195
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/Foto;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    .line 188
    invoke-static/range {v1 .. v8}, Lcom/br/ipad/isc/conexao/ConexaoFoto;->doFileUpload(Ljava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/Foto;->setIndicadorTransmitido(Ljava/lang/Integer;)V

    .line 200
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

.method public enviarFotosOnline(Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/controladores/ControladorFoto;->buscarFotosPendentes(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 112
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/Foto;

    .line 113
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/br/ipad/isc/controladores/ControladorBasico;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 116
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    .line 122
    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_LEITURA_ANORMALIDADE:Ljava/lang/Integer;

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v5

    .line 128
    sget-object v6, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_CONSUMO_ANORMALIDADE:Ljava/lang/Integer;

    :goto_1
    move-object v7, v5

    move-object v8, v6

    goto :goto_2

    :cond_1
    move-object v7, v6

    move-object v8, v7

    .line 132
    :goto_2
    new-instance v5, Lcom/br/ipad/isc/conexao/ConexaoWebServer;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v5}, Lcom/br/ipad/isc/conexao/ConexaoWebServer;->serverOnline()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    .line 138
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v6

    .line 141
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getFotoTipo()Ljava/lang/Integer;

    move-result-object v9

    .line 142
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "https://batchsanep.gruporas.com.br/gsan/processarRequisicaoDipositivoMovelImpressaoSimultaneaAndroidAction.do"

    .line 135
    invoke-static/range {v4 .. v11}, Lcom/br/ipad/isc/conexao/ConexaoFoto;->doFileUpload(Ljava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Lcom/br/ipad/isc/bean/Foto;->setIndicadorTransmitido(Ljava/lang/Integer;)V

    .line 147
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getInstance()Lcom/br/ipad/isc/controladores/ControladorBasico;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/br/ipad/isc/controladores/ControladorBasico;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return v0
.end method

.method public imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ControladorException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorFoto;->repositorioFoto:Lcom/br/ipad/isc/repositorios/RepositorioFoto;

    invoke-virtual {v0, p1, p2}, Lcom/br/ipad/isc/repositorios/RepositorioFoto;->imovelPossuiFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/RepositorioException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->printStackTrace()V

    .line 215
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/RepositorioException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance p1, Lcom/br/ipad/isc/excecoes/ControladorException;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorFoto;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/ControladorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetarInstancia()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/br/ipad/isc/controladores/ControladorFoto;->instance:Lcom/br/ipad/isc/controladores/ControladorFoto;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 52
    sput-object p1, Lcom/br/ipad/isc/controladores/ControladorFoto;->context:Landroid/content/Context;

    return-void
.end method
