.class Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;
.super Ljava/lang/Object;
.source "ImagemSalvarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    invoke-static {}, Lcom/br/ipad/isc/util/Util;->convertDateToDateStrFile()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {v0}, Lcom/br/ipad/isc/bean/Foto;-><init>()V

    .line 100
    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/bean/Foto;->setIndicadorTransmitido(Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setDataFoto(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$100(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setImovelConta(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 103
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$200(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setCaminho(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$300(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Lcom/br/ipad/isc/bean/LeituraAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$300(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/LeituraAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setLeituraAnormalidade(Lcom/br/ipad/isc/bean/LeituraAnormalidade;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$400(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    new-instance p1, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-direct {p1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {v1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$400(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->setId(Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setConsumoAnormalidade(Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$500(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_IMOVEL:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setFotoTipo(Ljava/lang/Integer;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$500(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setFotoTipo(Ljava/lang/Integer;)V

    .line 122
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$600(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/bean/Foto;->setTipoMedicao(Ljava/lang/Integer;)V

    .line 124
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/fachada/Fachada;->inserir(Lcom/br/ipad/isc/bean/ObjetoBasico;)J

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    const-class v1, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->access$000(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    move-result-object v0

    const-string v1, "helper"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;->this$0:Lcom/br/ipad/isc/gui/ImagemSalvarActivity;

    invoke-virtual {v0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
