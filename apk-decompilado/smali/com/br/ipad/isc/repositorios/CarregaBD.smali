.class public Lcom/br/ipad/isc/repositorios/CarregaBD;
.super Lcom/br/ipad/isc/repositorios/RepositorioBasico;
.source "CarregaBD.java"


# static fields
.field public static CONTADOR_IMOVEL:Ljava/lang/Integer;

.field private static contadorImovelCondominio:I

.field public static idConsumoCategoria:J

.field private static instancia:Lcom/br/ipad/isc/repositorios/CarregaBD;


# instance fields
.field public final CATEGORIA_SUBCATEGORIA:Ljava/lang/String;

.field public final CONSUMO_ANORMALIDADE:Ljava/lang/String;

.field public final CONSUMO_ANORMALIDADE_ACAO:Ljava/lang/String;

.field public final CONSUMO_ANTERIORES:Ljava/lang/String;

.field public final CONSUMO_TARIFA_CATEGORIA:Ljava/lang/String;

.field public final CONSUMO_TARIFA_FAIXA:Ljava/lang/String;

.field public final CONSUMO_TIPO:Ljava/lang/String;

.field public final CONTA_DEBITO:Ljava/lang/String;

.field public final CONTA_IMPOSTO:Ljava/lang/String;

.field public final CREDITO_REALIZADO:Ljava/lang/String;

.field public final DEBITO_COBRADO:Ljava/lang/String;

.field public final FATURAMENTO_SITUACAO_TIPO:Ljava/lang/String;

.field public final HIDROMETRO_INSTALADO:Ljava/lang/String;

.field public final IMOVEL_CONTA:Ljava/lang/String;

.field public final LEITURA_ANORMALIDADE:Ljava/lang/String;

.field public final LIGACAOAGUASITUACAOCONSUMOTIPO:Ljava/lang/String;

.field public final QUALIDADE_AGUA:Ljava/lang/String;

.field public final SISTEMA_PARAMETRO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 77
    sput-wide v0, Lcom/br/ipad/isc/repositorios/CarregaBD;->idConsumoCategoria:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;-><init>()V

    const-string v0, "01"

    .line 55
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->IMOVEL_CONTA:Ljava/lang/String;

    const-string v0, "02"

    .line 56
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CATEGORIA_SUBCATEGORIA:Ljava/lang/String;

    const-string v0, "03"

    .line 57
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_ANTERIORES:Ljava/lang/String;

    const-string v0, "04"

    .line 58
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->DEBITO_COBRADO:Ljava/lang/String;

    const-string v0, "05"

    .line 59
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CREDITO_REALIZADO:Ljava/lang/String;

    const-string v0, "06"

    .line 60
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTA_IMPOSTO:Ljava/lang/String;

    const-string v0, "07"

    .line 61
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTA_DEBITO:Ljava/lang/String;

    const-string v0, "08"

    .line 62
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->HIDROMETRO_INSTALADO:Ljava/lang/String;

    const-string v0, "09"

    .line 63
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_TARIFA_CATEGORIA:Ljava/lang/String;

    const-string v0, "10"

    .line 64
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_TARIFA_FAIXA:Ljava/lang/String;

    const-string v0, "11"

    .line 65
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->SISTEMA_PARAMETRO:Ljava/lang/String;

    const-string v0, "12"

    .line 66
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_ANORMALIDADE_ACAO:Ljava/lang/String;

    const-string v0, "13"

    .line 67
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_ANORMALIDADE:Ljava/lang/String;

    const-string v0, "14"

    .line 68
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->LEITURA_ANORMALIDADE:Ljava/lang/String;

    const-string v0, "15"

    .line 69
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->QUALIDADE_AGUA:Ljava/lang/String;

    const-string v0, "16"

    .line 70
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->FATURAMENTO_SITUACAO_TIPO:Ljava/lang/String;

    const-string v0, "17"

    .line 71
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONSUMO_TIPO:Ljava/lang/String;

    const-string v0, "24"

    .line 72
    iput-object v0, p0, Lcom/br/ipad/isc/repositorios/CarregaBD;->LIGACAOAGUASITUACAOCONSUMOTIPO:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/br/ipad/isc/repositorios/CarregaBD;
    .locals 1

    .line 47
    sget-object v0, Lcom/br/ipad/isc/repositorios/CarregaBD;->instancia:Lcom/br/ipad/isc/repositorios/CarregaBD;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/br/ipad/isc/repositorios/CarregaBD;

    invoke-direct {v0}, Lcom/br/ipad/isc/repositorios/CarregaBD;-><init>()V

    :cond_0
    return-object v0
.end method

.method private verificaArquivoDeletar(Ljava/io/File;Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 7

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 257
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 258
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 269
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 270
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getAnoMesConta()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public carregaLinhaParaBD(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/RepositorioException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioBasico;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->getInstance()Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->resetarInstancias()V

    .line 91
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ISC"

    const-string v3, "Arquivo Invalido"

    .line 97
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "01"

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 107
    sget-object v3, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    .line 109
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 113
    :cond_1
    new-instance v3, Lcom/br/ipad/isc/bean/ImovelConta;

    sget-object v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    invoke-direct {v3, p1, v6}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 115
    sget-object v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->CONTADOR_IMOVEL:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 117
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BACKUP_RETORNO:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_BANCO:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v6, v3}, Lcom/br/ipad/isc/repositorios/CarregaBD;->verificaArquivoDeletar(Ljava/io/File;Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 121
    invoke-direct {p0, v7, v3}, Lcom/br/ipad/isc/repositorios/CarregaBD;->verificaArquivoDeletar(Ljava/io/File;Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 127
    :cond_2
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getIndcCondominio()Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    sput v5, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicaoImovelCondominio(Ljava/lang/Integer;)V

    .line 130
    sget v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    add-int/2addr v6, v5

    sput v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 132
    sget v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/br/ipad/isc/bean/ImovelConta;->setPosicaoImovelCondominio(Ljava/lang/Integer;)V

    .line 133
    sget v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    add-int/2addr v6, v5

    sput v6, Lcom/br/ipad/isc/repositorios/CarregaBD;->contadorImovelCondominio:I

    .line 135
    :cond_4
    :goto_0
    invoke-virtual {v1, v3}, Lcom/br/ipad/isc/repositorios/RepositorioImovelConta;->inserirImovelContaVencimento(Lcom/br/ipad/isc/bean/ImovelConta;)J

    :cond_5
    const-string v1, "02"

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    new-instance v1, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/CategoriaSubcategoria;-><init>(Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_6
    const-string v1, "03"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnteriores;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoAnteriores;-><init>(Ljava/util/ArrayList;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_7
    const-string v1, "04"

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    new-instance v1, Lcom/br/ipad/isc/bean/DebitoCobrado;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/DebitoCobrado;-><init>(Ljava/util/ArrayList;)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_8
    const-string v1, "05"

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    new-instance v1, Lcom/br/ipad/isc/bean/CreditoRealizado;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/CreditoRealizado;-><init>(Ljava/util/ArrayList;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_9
    const-string v1, "06"

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 164
    new-instance v1, Lcom/br/ipad/isc/bean/ContaImposto;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ContaImposto;-><init>(Ljava/util/ArrayList;)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_a
    const-string v1, "07"

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 170
    new-instance v1, Lcom/br/ipad/isc/bean/ContaDebito;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ContaDebito;-><init>(Ljava/util/ArrayList;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_b
    const-string v1, "08"

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 176
    new-instance v1, Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;-><init>(Ljava/util/ArrayList;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_c
    const-string v1, "09"

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoTarifaCategoria;-><init>(Ljava/util/ArrayList;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    move-result-wide v5

    sput-wide v5, Lcom/br/ipad/isc/repositorios/CarregaBD;->idConsumoCategoria:J

    :cond_d
    const-string v1, "10"

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 188
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;

    sget-wide v5, Lcom/br/ipad/isc/repositorios/CarregaBD;->idConsumoCategoria:J

    invoke-direct {v1, p1, v5, v6}, Lcom/br/ipad/isc/bean/ConsumoTarifaFaixa;-><init>(Ljava/util/ArrayList;J)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_e
    const-string v1, "11"

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 194
    new-instance v1, Lcom/br/ipad/isc/bean/SistemaParametros;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/SistemaParametros;-><init>(Ljava/util/ArrayList;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_f
    const-string v1, "13"

    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 200
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>(Ljava/util/ArrayList;)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_10
    const-string v1, "12"

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 206
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidadeAcao;-><init>(Ljava/util/ArrayList;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_11
    const-string v1, "14"

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 212
    new-instance v1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>(Ljava/util/ArrayList;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_12
    const-string v1, "15"

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 218
    new-instance v1, Lcom/br/ipad/isc/bean/QualidadeAgua;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/QualidadeAgua;-><init>(Ljava/util/ArrayList;)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_13
    const-string v1, "16"

    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 224
    new-instance v1, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/FaturamentoSituacaoTipo;-><init>(Ljava/util/ArrayList;)V

    .line 225
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_14
    const-string v1, "17"

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 230
    new-instance v1, Lcom/br/ipad/isc/bean/ConsumoTipo;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/ConsumoTipo;-><init>(Ljava/util/ArrayList;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    :cond_15
    const-string v1, "24"

    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 236
    new-instance v1, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;

    invoke-direct {v1, p1}, Lcom/br/ipad/isc/bean/LigacaoAguaSituacaoConsumoTipo;-><init>(Ljava/util/ArrayList;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/repositorios/RepositorioBasico;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    .line 240
    :cond_16
    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object v4
.end method
