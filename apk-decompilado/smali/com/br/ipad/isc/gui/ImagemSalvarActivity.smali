.class public Lcom/br/ipad/isc/gui/ImagemSalvarActivity;
.super Landroid/app/Activity;
.source "ImagemSalvarActivity.java"


# instance fields
.field private btSair:Landroid/widget/Button;

.field private btSalvar:Landroid/widget/Button;

.field private btTirarNovamente:Landroid/widget/Button;

.field private diretorio:Ljava/lang/String;

.field private fotoTipo:Ljava/lang/Integer;

.field private helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

.field private idConsumoAnormalidade:Ljava/lang/Integer;

.field private idLeituraAnormalidade:Ljava/lang/Integer;

.field private imagem:Landroid/widget/ImageView;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private medicaoTipo:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Lcom/br/ipad/isc/bean/helpers/CameraHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->diretorio:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->fotoTipo:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)Ljava/lang/Integer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->medicaoTipo:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method protected deletaFoto()V
    .locals 2

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->diretorio:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 147
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->deletaFoto()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    const-string v2, "helper"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f0a0027

    .line 44
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "helper"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    .line 48
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getImovel()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 49
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getMedicaoTipo()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->medicaoTipo:Ljava/lang/Integer;

    .line 50
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getIdLeituraAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->idLeituraAnormalidade:Ljava/lang/Integer;

    .line 51
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getFotoTipo()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->fotoTipo:Ljava/lang/Integer;

    .line 52
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->helper:Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->getIdConsumoAnormalidade()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->idConsumoAnormalidade:Ljava/lang/Integer;

    const p1, 0x7f070089

    .line 54
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->imagem:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "foto"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->diretorio:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->imagem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->imagem:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const p1, 0x7f070054

    .line 63
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btSalvar:Landroid/widget/Button;

    const p1, 0x7f070052

    .line 64
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btTirarNovamente:Landroid/widget/Button;

    const p1, 0x7f070053

    .line 65
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btSair:Landroid/widget/Button;

    .line 67
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btTirarNovamente:Landroid/widget/Button;

    new-instance v0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$1;-><init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btSair:Landroid/widget/Button;

    new-instance v0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$2;-><init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity;->btSalvar:Landroid/widget/Button;

    new-instance v0, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ImagemSalvarActivity$3;-><init>(Lcom/br/ipad/isc/gui/ImagemSalvarActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
