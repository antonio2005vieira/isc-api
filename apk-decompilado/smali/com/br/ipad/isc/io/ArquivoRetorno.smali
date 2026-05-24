.class public Lcom/br/ipad/isc/io/ArquivoRetorno;
.super Lcom/br/ipad/isc/controladores/ControladorBasico;
.source "ArquivoRetorno.java"


# static fields
.field public static final ARQUIVO_COMPLETO:S = 0x0s

.field public static final ARQUIVO_INCOMPLETO:S = 0x2s

.field public static final ARQUIVO_LIDOS_ATE_AGORA:S = 0x1s

.field public static final ARQUIVO_TODOS_OS_CALCULADOS:S = 0x3s

.field private static instancia:Lcom/br/ipad/isc/io/ArquivoRetorno;

.field public static montaArquivo:Ljava/lang/StringBuilder;


# instance fields
.field private arrayListImovelConta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fachada:Lcom/br/ipad/isc/fachada/Fachada;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorBasico;-><init>()V

    .line 34
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    return-void
.end method

.method private gerarRegistroTipo0(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;
    .locals 3

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    .line 897
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 915
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gerarRegistroTipo1(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    new-instance v2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 112
    new-instance v2, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>()V

    .line 114
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v2

    .line 115
    iget-object v3, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarHidrometroInstaladoPorImovelTipoMedicao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/HidrometroInstalado;

    move-result-object v3

    .line 120
    new-instance v6, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 121
    new-instance v6, Lcom/br/ipad/isc/bean/ConsumoHistorico;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;-><init>()V

    .line 123
    iget-object v6, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v6

    .line 124
    iget-object v8, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v8

    const-string v9, "\n"

    const/4 v10, 0x0

    const-string v11, "1"

    const-string v12, "0"

    const/4 v13, 0x0

    if-eqz v6, :cond_13

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lt v14, v15, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gt v14, v15, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    move-object v14, v11

    goto :goto_1

    :cond_1
    :goto_0
    move-object v14, v12

    .line 143
    :goto_1
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 148
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v13

    .line 151
    :goto_2
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 152
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v15

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 157
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 158
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v15

    :cond_4
    move-object/from16 v16, v13

    .line 163
    :cond_5
    :goto_3
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v5}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 178
    :cond_6
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    .line 189
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 190
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 192
    :cond_7
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    if-eqz v16, :cond_8

    .line 197
    invoke-static/range {v16 .. v16}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {v15}, Lcom/br/ipad/isc/util/Util;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v14}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_b
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_c
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_d

    .line 218
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 219
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 221
    :cond_d
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_b
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_e
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_f
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 242
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 244
    :cond_10
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_e
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 250
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v4

    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 252
    :cond_11
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_12

    .line 260
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v4, v2}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 262
    :cond_12
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14, v7}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorDebitoTotal(Ljava/lang/Integer;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v4, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaX()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaY()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNumeroMesMotivoRevisao()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_11

    :cond_13
    const/4 v4, 0x0

    :goto_11
    if-eqz v8, :cond_25

    if-eqz v3, :cond_14

    .line 317
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 318
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteInferior()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v10, v14, :cond_14

    .line 319
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeituraLimiteSuperior()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gt v10, v14, :cond_14

    goto :goto_12

    :cond_14
    if-eqz v3, :cond_15

    move-object v10, v11

    goto :goto_13

    :cond_15
    :goto_12
    move-object v10, v12

    .line 330
    :goto_13
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const-string v15, ""

    if-eqz v3, :cond_17

    .line 332
    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_17

    .line 333
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_16

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 334
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 336
    :cond_16
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v14

    goto :goto_14

    :cond_17
    if-eqz v2, :cond_18

    .line 342
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v16

    if-eqz v16, :cond_18

    .line 343
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getDataLeitura()Ljava/util/Date;

    move-result-object v14

    .line 348
    :cond_18
    :goto_14
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "2"

    .line 354
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_19

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 363
    :cond_19
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1a

    .line 375
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_1a

    .line 376
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v2

    goto :goto_16

    :cond_1a
    move-object/from16 v18, v2

    const/4 v13, 0x0

    .line 378
    invoke-static {v13}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :goto_16
    invoke-static {v15}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {v14}, Lcom/br/ipad/isc/util/Util;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getLeituraAtual()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    const/4 v2, 0x0

    goto :goto_17

    :cond_1b
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_17
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1c

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoMedidoMes()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_18

    :cond_1c
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_18
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMes()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_19

    :cond_1d
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_19
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1e

    .line 400
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 401
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 403
    :cond_1e
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :goto_1a
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoRateio()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1f
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getTipoConsumo()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    const/4 v2, 0x0

    goto :goto_1c

    :cond_20
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v6

    if-eqz v6, :cond_21

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1d

    :cond_21
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 427
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoCobradoMesImoveisMicro()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_1e

    :cond_22
    const/4 v2, 0x0

    .line 429
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :goto_1e
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_23
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_24

    .line 440
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_24
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorDebitoTotal(Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaX()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaY()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getNumeroMesMotivoRevisao()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 470
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x1

    goto :goto_21

    :cond_25
    move-object/from16 v18, v2

    const/16 v17, 0x0

    :goto_21
    if-nez v4, :cond_2b

    if-nez v17, :cond_2b

    .line 492
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarAnoMesParaMesAnoSemBarra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 507
    :cond_26
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_22
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_27

    .line 518
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 519
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_27
    const/4 v2, 0x0

    .line 521
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    if-eqz v18, :cond_28

    .line 525
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 526
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getAnormalidade()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_24

    :cond_28
    const/4 v2, 0x0

    .line 528
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :goto_24
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_29

    .line 539
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 540
    invoke-virtual/range {v18 .. v18}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->getLeitura()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 542
    :cond_29
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_25
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelImpresso()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdDocumentoNotificacaoDebito()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_2a

    .line 583
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterLeituraAnterior(Lcom/br/ipad/isc/bean/HidrometroInstalado;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_2a
    const/4 v2, 0x0

    .line 585
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_26
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getQntVezesImpressaoConta()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorTotal(Ljava/lang/Integer;Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorDebitoTotal(Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorCreditoTotal(Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v2, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorImpostoTotal(Ljava/lang/Integer;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaX()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getNumeroCoordenadaY()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 613
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private gerarRegistroTipo2e3(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v2

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 653
    iget-object v3, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarCategoriaSubcategoriaPorImovelId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_14

    const/4 v5, 0x0

    .line 658
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 660
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    .line 662
    new-instance v7, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 663
    iget-object v7, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 664
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v7

    .line 666
    new-instance v8, Lcom/br/ipad/isc/bean/ContaCategoria;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;-><init>()V

    .line 667
    iget-object v8, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 668
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getId()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaCategoriaPorCategoriaSubcategoriaId(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ContaCategoria;

    move-result-object v8

    const-string v10, "2"

    .line 671
    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndcTarifaCatgoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->shortValue()S

    move-result v10

    const-string v11, "0"

    if-ne v10, v9, :cond_0

    .line 685
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 687
    :cond_0
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 689
    :goto_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x0

    if-eqz v7, :cond_1

    .line 692
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_2

    .line 695
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_2
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3

    .line 698
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_3
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4

    .line 701
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_4
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_5

    .line 704
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_5
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    .line 707
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_6
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_7

    .line 710
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;->getValorTarifaMinima()Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_7
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v12

    :goto_8
    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_8

    .line 713
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;->getNumConsumoMinimo()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_8
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_9
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    .line 716
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 720
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_9

    .line 724
    iget-object v13, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 725
    invoke-virtual {v7}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v13

    :cond_9
    if-eqz v8, :cond_a

    .line 730
    iget-object v7, v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 731
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ContaCategoria;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContasCategoriasConsumosFaixasPorPorContaCategoriaId(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v14

    :cond_a
    const-string v7, "3"

    if-eqz v13, :cond_11

    const/4 v8, 0x0

    .line 736
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_10

    .line 737
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 739
    new-instance v15, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    if-eqz v14, :cond_c

    .line 741
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_c

    const/4 v4, 0x0

    .line 743
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_c

    .line 745
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 747
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v9

    if-nez v9, :cond_b

    .line 748
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v9

    if-nez v9, :cond_b

    goto :goto_c

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 755
    :cond_c
    :goto_c
    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v11}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    goto :goto_d

    :cond_d
    const-wide/16 v9, 0x0

    :goto_d
    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_e
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v15}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_f
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    :goto_f
    invoke-static {v9}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_a

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_11
    const/4 v4, 0x0

    if-eqz v14, :cond_13

    .line 796
    new-instance v8, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;-><init>()V

    const/4 v8, 0x0

    .line 798
    :goto_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 800
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;

    .line 803
    invoke-static {v7}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoCategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v6}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;->getCodigoSubcategoria()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v15, 0x0

    .line 818
    invoke-static/range {v15 .. v16}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoInicial()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumoFinal()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-static/range {v15 .. v16}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorTarifa()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getNumConsumo()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :cond_12
    invoke-static {v11}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_11
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ContaCategoriaConsumoFaixa;->getValorFaturado()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_10

    :cond_13
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 846
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private gerarRegistroTipo4(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;
    .locals 10

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    iget-object v1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarContaImpostoPorImovelId(Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 858
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 859
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/br/ipad/isc/bean/ContaImposto;

    const-string v4, "4"

    .line 862
    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getTipoImposto()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getDescricaoImposto()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v4, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->obterValorContaSemImposto(Ljava/lang/Integer;)D

    move-result-wide v4

    .line 878
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ContaImposto;->getPercentualAlicota()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const/4 v3, 0x7

    invoke-static {v6, v7, v3}, Lcom/br/ipad/isc/util/Util;->arredondar(DI)D

    move-result-wide v6

    mul-double v4, v4, v6

    .line 879
    invoke-static {v4, v5}, Lcom/br/ipad/isc/util/Util;->formatarDoubleParaMoedaReal(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 882
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gerarRegistroTipo7(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;
    .locals 2

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "7"

    .line 958
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getIcImpressaoGuiaLixo()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 976
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getGrupoFaturamento()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 982
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static getInstancia()Lcom/br/ipad/isc/io/ArquivoRetorno;
    .locals 1

    .line 100
    sget-object v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->instancia:Lcom/br/ipad/isc/io/ArquivoRetorno;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/br/ipad/isc/io/ArquivoRetorno;

    invoke-direct {v0}, Lcom/br/ipad/isc/io/ArquivoRetorno;-><init>()V

    sput-object v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->instancia:Lcom/br/ipad/isc/io/ArquivoRetorno;

    .line 104
    :cond_0
    sget-object v0, Lcom/br/ipad/isc/io/ArquivoRetorno;->instancia:Lcom/br/ipad/isc/io/ArquivoRetorno;

    return-object v0
.end method


# virtual methods
.method public gerarArquivoRetorno(SIZ)[Ljava/lang/Object;
    .locals 11

    const/4 p3, 0x3

    new-array v0, p3, [Ljava/lang/Object;

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v4

    .line 1009
    iget-object v5, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1010
    iget-object v5, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1012
    iget-object v7, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    new-instance v8, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v8}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v7, v5, v8}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v5

    check-cast v5, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 1014
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v5, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPorPosicao(Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v5

    .line 1021
    :goto_0
    invoke-virtual {v4}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorTransmissaoOffline()Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    :cond_1
    const/4 v4, 0x2

    const/4 v7, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1032
    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo0(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    if-ne p1, p3, :cond_3

    if-nez p2, :cond_3

    const/4 v8, 0x7

    .line 1034
    invoke-direct {p0, v8, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo0(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    if-nez p2, :cond_4

    const/4 v8, 0x6

    .line 1036
    invoke-direct {p0, v8, v5}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo0(ILcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_4
    :goto_1
    new-instance v5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    const/4 v5, 0x0

    .line 1042
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_b

    .line 1044
    iget-object v8, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v9}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v10}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v8, v9, v10}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v8

    check-cast v8, Lcom/br/ipad/isc/bean/ImovelConta;

    if-ne p1, v6, :cond_5

    .line 1058
    iget-object v9, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1059
    invoke-virtual {v9, v8}, Lcom/br/ipad/isc/fachada/Fachada;->enviarAoCalcular(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    if-nez p1, :cond_6

    iget-object v9, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    .line 1062
    invoke-virtual {v9, v8}, Lcom/br/ipad/isc/fachada/Fachada;->enviarAoFinalizar(Lcom/br/ipad/isc/bean/ImovelConta;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    if-eq p1, p3, :cond_7

    if-ne p1, v4, :cond_9

    .line 1066
    :cond_7
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcImovelCalculado()Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1071
    :cond_8
    invoke-direct {p0, v8}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo1(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-direct {p0, v8}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo2e3(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-direct {p0, v8}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo4(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-direct {p0, v8}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo7(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1083
    :cond_9
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdGuiaPagamentoLixo()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1087
    invoke-direct {p0, v8}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo7(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v8}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1100
    :cond_b
    sget-object v3, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getCaminhoArquivoRetorno(S)Ljava/lang/String;

    move-result-object v2

    .line 1103
    aget-object v3, v0, v7

    if-eqz v3, :cond_c

    aget-object v3, v0, v7

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1105
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v7

    aput-object v1, v0, v6

    :cond_d
    if-eqz v2, :cond_e

    aput-object v2, v0, v4

    .line 1114
    :cond_e
    invoke-virtual {p0}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getTotalImoveis()I

    move-result v1

    sub-int/2addr v1, v6

    sub-int/2addr v1, p2

    if-nez v1, :cond_10

    .line 1115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    if-ne p1, p3, :cond_10

    .line 1119
    :cond_f
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIndicadorRotaMarcacaoAtiva()Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    new-instance p2, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {p2}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 1123
    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisar(Lcom/br/ipad/isc/bean/ObjetoBasico;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p2, 0x0

    .line 1127
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_10

    .line 1129
    new-instance p3, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    invoke-direct {p3}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;-><init>()V

    .line 1130
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;

    .line 1131
    sget-object v1, Lcom/br/ipad/isc/io/ArquivoRetorno;->montaArquivo:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo5(Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1141
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1142
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ISC"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v0, v7

    :cond_10
    return-object v0
.end method

.method public gerarArquivoRetornoOnLine(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1154
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo1(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1156
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo2e3(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo4(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1160
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/io/ArquivoRetorno;->gerarRegistroTipo7(Lcom/br/ipad/isc/bean/ImovelConta;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public gerarRegistroTipo5(Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;)Ljava/lang/StringBuilder;
    .locals 2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5"

    .line 929
    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SequencialRotaMarcacao;->getAnoMesReferencia()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->formatarCampoParaConcatenacao(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 941
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getArrayListImovelConta()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCaminhoArquivoRetorno(S)Ljava/lang/String;
    .locals 7

    .line 74
    iget-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarPrimeiroImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    const-string v1, ".txt"

    const/4 v2, 0x6

    const-string v3, ""

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GCOMPLETO"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "G"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getIdLocalidade()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/br/ipad/isc/util/Util;->adicionarZerosEsquerdaNumero(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getInscricao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getCodigoRota()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalImoveis()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setArrayListImovelConta(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarIdsImoveisLidos()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 47
    iget-object p1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarIdsImoveisCalculados()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarIdsImoveisLidosNaoEnviados()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/io/ArquivoRetorno;->getControladorImovelConta()Lcom/br/ipad/isc/controladores/ControladorImovelConta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/controladores/ControladorImovelConta;->buscarIdsImoveisLidosNaoEnviadosNaoCondominio()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    .line 55
    :goto_0
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    iget-object v0, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->fachada:Lcom/br/ipad/isc/fachada/Fachada;

    invoke-virtual {v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarTodosImoveisComApenasGuia()Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/br/ipad/isc/io/ArquivoRetorno;->arrayListImovelConta:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :goto_2
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :cond_4
    return-void
.end method
