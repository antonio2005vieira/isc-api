.class public Lcom/br/ipad/isc/gui/FotoActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "FotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentPhotoPath:Ljava/lang/String;

.field private fotoHidrometroAnormalidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

.field private fotoHidrometroAnormalidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

.field private fotoImovelAnorlidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

.field private fotoImovelAnorlidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

.field private helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

.field private idConsumoAnormalidade:Ljava/lang/Integer;

.field private idLeituraAnormalidade:Ljava/lang/Integer;

.field private imgAnormalidade:Landroid/widget/ImageView;

.field private imgAnormalidadeConsumo:Landroid/widget/ImageView;

.field private imgAnormalidadeLeitura:Landroid/widget/ImageView;

.field private imgImovel:Landroid/widget/ImageView;

.field private imgImovelAnormalidadeConsumo:Landroid/widget/ImageView;

.field private imgImovelAnormalidadeLeitura:Landroid/widget/ImageView;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private intent:Landroid/content/Intent;

.field private llAnormalidade:Landroid/widget/LinearLayout;

.field private llAnormalidadeConsumo:Landroid/widget/LinearLayout;

.field private llAnormalidadeLeitura:Landroid/widget/LinearLayout;

.field private llHidrometroAnormalidadeConsumo:Landroid/widget/LinearLayout;

.field private llHidrometroAnormalidadeLeitura:Landroid/widget/LinearLayout;

.field private llImovel:Landroid/widget/LinearLayout;

.field private llImovelAnormalidadeConsumo:Landroid/widget/LinearLayout;

.field private llImovelAnormalidadeLeitura:Landroid/widget/LinearLayout;

.field private llParams:Landroid/widget/LinearLayout$LayoutParams;

.field private medicaoTipo:Ljava/lang/Integer;

.field private photoFile:Ljava/io/File;

.field private photoURI:Landroid/net/Uri;

.field private tipoFoto:Ljava/lang/Integer;

.field private tvDate:Landroid/widget/TextView;

.field private tvImovel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    .line 84
    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    .line 86
    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    .line 87
    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    .line 88
    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->photoFile:Ljava/io/File;

    return-void
.end method

.method private carregarFotosImovel()V
    .locals 6

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->possuiAnormalidadeLeitura()Z

    move-result v0

    const v1, 0x7f060085

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 216
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeLeitura:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeLeitura:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 225
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeLeitura(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_1

    .line 227
    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeLeitura:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeLeitura:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->possuiAnormalidadeConsumo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 237
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_3

    .line 240
    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeConsumo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeConsumo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    :goto_2
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 246
    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoAnormalidadeConsumo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_4

    .line 248
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeConsumo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeConsumo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/FotoActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    .line 488
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->currentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method private deletarUltimaFotoDCIM()Z
    .locals 9

    const/4 v0, 0x0

    .line 458
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DCIM/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 461
    array-length v2, v1

    if-lez v2, :cond_2

    .line 463
    aget-object v2, v1, v0

    const/4 v3, 0x1

    .line 464
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 465
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 466
    aget-object v2, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 475
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private exibirAlertaLeituraAlterada(Ljava/lang/String;)V
    .locals 2

    .line 439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b003f

    .line 440
    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/FotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 443
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/FotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/FotoActivity$1;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/FotoActivity$1;-><init>(Lcom/br/ipad/isc/gui/FotoActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private possuiAnormalidadeConsumo()Z
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private possuiAnormalidadeLeitura()Z
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private reloadImagesBitmaps()V
    .locals 8

    .line 177
    :try_start_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    const v1, 0x7f060085

    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v2

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual/range {v2 .. v7}, Lcom/br/ipad/isc/fachada/Fachada;->buscarFotoTipo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/Foto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidade:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/Foto;->getCaminho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidade:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidade:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/NegocioException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/NegocioException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 201
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "_"

    .line 329
    invoke-super {p0, p1, p2, p3}, Lcom/br/ipad/isc/gui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 331
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->existeSDCARD()V

    const/16 p3, 0x2063

    if-ne p1, p3, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    .line 340
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_FOTOS:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 346
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->obterAAAAMMDDHHMMSS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStrFile()Ljava/lang/String;

    move-result-object p2

    .line 348
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->CAMINHO_FOTOS:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 350
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_LEITURA_ANORMALIDADE:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_TIPO_CONSUMO_ANORMALIDADE:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 355
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->currentPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 360
    invoke-static {p1}, Lcom/br/ipad/isc/util/Util;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 361
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 362
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5d

    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 363
    new-instance p3, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {p3}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    .line 365
    sget-object v0, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p3, v0}, Lcom/br/ipad/isc/bean/Foto;->setIndicadorTransmitido(Ljava/lang/Integer;)V

    .line 366
    invoke-virtual {p3, p2}, Lcom/br/ipad/isc/bean/Foto;->setDataFoto(Ljava/lang/String;)V

    .line 367
    iget-object p2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p3, p2}, Lcom/br/ipad/isc/bean/Foto;->setImovelConta(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 368
    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setCaminho(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 371
    new-instance p1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 372
    iget-object p2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 373
    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setLeituraAnormalidade(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 376
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 377
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 378
    iget-object p2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 379
    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 382
    :cond_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    if-ne p1, p2, :cond_5

    .line 383
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setFotoTipo(Ljava/lang/Integer;)V

    .line 386
    :cond_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    sget-object p2, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    if-ne p1, p2, :cond_6

    .line 387
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setFotoTipo(Ljava/lang/Integer;)V

    .line 390
    :cond_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    invoke-virtual {p3, p1}, Lcom/br/ipad/isc/bean/Foto;->setTipoMedicao(Ljava/lang/Integer;)V

    .line 392
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/br/ipad/isc/fachada/Fachada;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    .line 394
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->deletarUltimaFotoDCIM()Z

    .line 396
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->carregarFotosImovel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 399
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->possuiAnormalidadeLeitura()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeLeitura:Lcom/br/ipad/isc/bean/Foto;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\u00c9 obrigat\u00f3rio tirar duas fotos para anormalidade de leitura."

    .line 427
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/FotoActivity;->exibirAlertaLeituraAlterada(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->possuiAnormalidadeConsumo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoHidrometroAnormalidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->fotoImovelAnorlidadeConsumo:Lcom/br/ipad/isc/bean/Foto;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "\u00c9 obrigat\u00f3rio tirar duas fotos para anormalidade de consumo."

    .line 430
    invoke-direct {p0, v0}, Lcom/br/ipad/isc/gui/FotoActivity;->exibirAlertaLeituraAlterada(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const v0, 0x1080062

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    .line 283
    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISC"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :pswitch_0
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    .line 268
    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    goto :goto_0

    .line 275
    :pswitch_1
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    .line 276
    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    goto :goto_0

    .line 271
    :pswitch_2
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    .line 272
    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    goto :goto_0

    .line 279
    :pswitch_3
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    .line 280
    iput-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    .line 288
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p1

    const-string v0, "18"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 292
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/br/ipad/isc/gui/CameraActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->intent:Landroid/content/Intent;

    .line 293
    new-instance p1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 294
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->intent:Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->intent:Landroid/content/Intent;

    const-string v1, "helper"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 296
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tipoFoto:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 301
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->createImageFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->photoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->photoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.br.ipad.isc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->photoFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->photoURI:Landroid/net/Uri;

    const-string v1, "output"

    .line 318
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x2063

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/br/ipad/isc/gui/FotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0700b4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    .line 97
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->execute:Z

    if-eqz p1, :cond_7

    const p1, 0x7f0a0023

    .line 98
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "helper"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    .line 102
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 103
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getMedicaoTipo()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 104
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getIdLeituraAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    .line 105
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getIdConsumoAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    .line 109
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getIndicadorFotoObrigatoria()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getAnormalidadeLeituraFaturada()Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    :cond_3
    const p1, 0x7f0700b3

    .line 126
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llAnormalidadeLeitura:Landroid/widget/LinearLayout;

    const p1, 0x7f0700b7

    .line 127
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llImovelAnormalidadeLeitura:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07008e

    .line 130
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeLeitura:Landroid/widget/ImageView;

    const p1, 0x7f0700b5

    .line 132
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llHidrometroAnormalidadeLeitura:Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07008c

    .line 135
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeLeitura:Landroid/widget/ImageView;

    const p1, 0x7f0700b2

    .line 138
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llAnormalidadeConsumo:Landroid/widget/LinearLayout;

    const p1, 0x7f0700b6

    .line 139
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llImovelAnormalidadeConsumo:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07008d

    .line 142
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgImovelAnormalidadeConsumo:Landroid/widget/ImageView;

    const p1, 0x7f0700b4

    .line 144
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llHidrometroAnormalidadeConsumo:Landroid/widget/LinearLayout;

    .line 145
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07008b

    .line 147
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imgAnormalidadeConsumo:Landroid/widget/ImageView;

    const p1, 0x7f070092

    .line 152
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tvImovel:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/br/ipad/isc/gui/FotoActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f07006b

    .line 155
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/FotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->tvDate:Landroid/widget/TextView;

    .line 156
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/FotoActivity;->carregarFotosImovel()V

    .line 162
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llAnormalidadeLeitura:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->medicaoTipo:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/FotoActivity;->llAnormalidadeConsumo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method
