.class public Lcom/br/ipad/isc/bean/Foto;
.super Lcom/br/ipad/isc/bean/ObjetoBasico;
.source "Foto.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/br/ipad/isc/bean/Foto$FotosTipos;,
        Lcom/br/ipad/isc/bean/Foto$Fotos;
    }
.end annotation


# static fields
.field private static colunas:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x1b2cf541219e2523L


# instance fields
.field private caminho:Ljava/lang/String;

.field private consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

.field private dataFoto:Ljava/util/Date;

.field private fotoTipo:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private imovelConta:Lcom/br/ipad/isc/bean/ImovelConta;

.field private indicadorTransmitido:Ljava/lang/Integer;

.field private leituraAnormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

.field private tipoMedicao:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FOTO_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IMOV_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FOTO_CAMINHO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FOTO_ICTRANSMITIDO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FOTO_DTFOTO"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LTAN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CSAN_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FOTO_TIPO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FOTO_MEDICAOTIPO"

    aput-object v2, v0, v1

    .line 117
    sput-object v0, Lcom/br/ipad/isc/bean/Foto;->colunas:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/br/ipad/isc/bean/ObjetoBasico;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaminho()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->caminho:Ljava/lang/String;

    return-object v0
.end method

.method public getColunas()[Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/br/ipad/isc/bean/Foto;->colunas:[Ljava/lang/String;

    return-object v0
.end method

.method public getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-object v0
.end method

.method public getDataFoto()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->dataFoto:Ljava/util/Date;

    return-object v0
.end method

.method public getFotoTipo()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->fotoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->imovelConta:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getIndicadorTransmitido()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->indicadorTransmitido:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->leituraAnormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    return-object v0
.end method

.method public getNomeTabela()Ljava/lang/String;
    .locals 1

    const-string v0, "foto"

    return-object v0
.end method

.method public getTipoMedicao()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto;->tipoMedicao:Ljava/lang/Integer;

    return-object v0
.end method

.method public preencherObjetos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/Foto;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 194
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FOTO_ID"

    .line 195
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IMOV_ID"

    .line 196
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "FOTO_CAMINHO"

    .line 197
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "FOTO_ICTRANSMITIDO"

    .line 198
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "FOTO_DTFOTO"

    .line 199
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "LTAN_ID"

    .line 200
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CSAN_ID"

    .line 201
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "FOTO_TIPO"

    .line 202
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "FOTO_MEDICAOTIPO"

    .line 203
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 205
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :cond_0
    new-instance v13, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {v13}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    .line 210
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setId(Ljava/lang/Integer;)V

    .line 211
    new-instance v14, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    .line 212
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ImovelConta;->setId(Ljava/lang/Integer;)V

    .line 213
    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setImovelConta(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 214
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setCaminho(Ljava/lang/String;)V

    .line 215
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setIndicadorTransmitido(Ljava/lang/Integer;)V

    .line 216
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setDataFoto(Ljava/lang/String;)V

    .line 218
    invoke-static {v0, v6, v7}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 220
    new-instance v14, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 222
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 224
    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setLeituraAnormalidade(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 227
    :cond_1
    invoke-static {v0, v8, v9}, Lcom/br/ipad/isc/util/Util;->getIntBanco(Landroid/database/Cursor;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 229
    new-instance v14, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {v14}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 231
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 233
    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 236
    :cond_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setFotoTipo(Ljava/lang/Integer;)V

    .line 237
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/br/ipad/isc/bean/Foto;->setTipoMedicao(Ljava/lang/Integer;)V

    .line 239
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    return-object v12
.end method

.method public preencherValues()Landroid/content/ContentValues;
    .locals 3

    .line 163
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getImovelConta()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IMOV_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOTO_CAMINHO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getIndicadorTransmitido()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FOTO_ICTRANSMITIDO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getLeituraAnormalidade()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LTAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CSAN_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getFotoTipo()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FOTO_TIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getTipoMedicao()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FOTO_MEDICAOTIPO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    invoke-virtual {p0}, Lcom/br/ipad/isc/bean/Foto;->getDataFoto()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 183
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOTO_DTFOTO"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public setCaminho(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->caminho:Ljava/lang/String;

    return-void
.end method

.method public setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-void
.end method

.method public setDataFoto(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 81
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getData(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->dataFoto:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public setFotoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->fotoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImovelConta(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->imovelConta:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setIndicadorTransmitido(Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->indicadorTransmitido:Ljava/lang/Integer;

    return-void
.end method

.method public setLeituraAnormalidade(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->leituraAnormalidade:Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    return-void
.end method

.method public setTipoMedicao(Ljava/lang/Integer;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto;->tipoMedicao:Ljava/lang/Integer;

    return-void
.end method
