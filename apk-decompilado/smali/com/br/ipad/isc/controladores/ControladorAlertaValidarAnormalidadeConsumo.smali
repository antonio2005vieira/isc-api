.class public Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;
.super Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;
.source "ControladorAlertaValidarAnormalidadeConsumo.java"

# interfaces
.implements Lcom/br/ipad/isc/controladores/IControladorAlertaValidarAnormalidadeConsumo;


# instance fields
.field private consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

.field private idConsumoAnormalidade:Ljava/lang/Integer;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private imprimir:Z

.field private proximo:Z

.field private tipoMedicao:I


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 45
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imprimir:Z

    .line 46
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    .line 47
    iput-boolean p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->proximo:Z

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZLjava/lang/Integer;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imprimir:Z

    .line 54
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    .line 55
    iput-boolean p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->proximo:Z

    .line 56
    iput-object p7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;IZLjava/lang/Integer;Lcom/br/ipad/isc/bean/ConsumoAnormalidade;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 63
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imprimir:Z

    .line 64
    iput p5, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    .line 65
    iput-boolean p6, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->proximo:Z

    .line 66
    iput-object p7, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->idConsumoAnormalidade:Ljava/lang/Integer;

    .line 67
    iput-object p8, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->validarFotosConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamarProximoInterno()V

    return-void
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Landroid/app/Activity;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    return p0
.end method

.method private alertConsumoAnormalidadeObrigatorioFoto(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f0600d1

    .line 182
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 184
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;

    invoke-direct {v1, p0, p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 192
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0b0111

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$3;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$3;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private alertConsumoAnormalidadeSubstituirFoto(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const v0, 0x7f0600d1

    .line 144
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 146
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 154
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;-><init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private chamaProximo()V
    .locals 3

    .line 305
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/ContaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :goto_0
    return-void
.end method

.method private chamarProximoInterno()V
    .locals 5

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorSistemaParametros()Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorSistemaParametros;->atualizarIdImovelSelecionadoSistemaParametros(Ljava/lang/Integer;)V

    .line 207
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorSequencialRotaMarcacao()Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/controladores/ControladorSequencialRotaMarcacao;->gravarSequencialRotaMarcacao(Lcom/br/ipad/isc/bean/ImovelConta;)V

    .line 209
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imprimir:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->NAO:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->imovelNaoPermiteImpressao(Lcom/br/ipad/isc/bean/ImovelConta;ZI)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorImpressao()Lcom/br/ipad/isc/controladores/ControladorImpressao;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/br/ipad/isc/controladores/ControladorImpressao;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;IZ)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_3

    .line 226
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {v0, v1}, Lcom/br/ipad/isc/util/Util;->chamaProximo(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->mudarTab()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 240
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private validarFotosConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 4

    const-string v0, "IMOV_ID =? AND FOTO_TIPO=? AND FOTO_MEDICAOTIPO=? AND CSAN_ID =? "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->FOTO_ANORMALIDADE:Ljava/lang/Integer;

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 120
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 121
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorFoto()Lcom/br/ipad/isc/controladores/ControladorFoto;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorFoto;->buscarFotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ISC"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public alertaMensagem()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->mudarTab()V

    goto :goto_0

    .line 268
    :cond_0
    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    :goto_0
    return-void
.end method

.method public alertaPerguntaNao()V
    .locals 4

    .line 245
    invoke-super {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->getIdMensagem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->apagaDados(Lcom/br/ipad/isc/bean/ImovelConta;II)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 252
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 253
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const-string v3, "imovel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    const-string v1, "posicao"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 257
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public alertaPerguntaSim()V
    .locals 3

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getControladorConsumoHistorico()Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorConsumoHistorico;->buscarConsumoHistoricoPorImovelIdLigacaoTipo(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoHistorico;->getConsumoAnormalidade()Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    .line 82
    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getIndicadorFotoAbrigatoria()Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tipoMedicao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->consumoAnormalidade:Lcom/br/ipad/isc/bean/ConsumoAnormalidade;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ConsumoAnormalidade;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tirarFotoConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamarProximoInterno()V
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ControladorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/ControladorException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public chamaAnterior()V
    .locals 3

    .line 317
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/HidrometroAguaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/HidrometroEsgotoActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/br/ipad/isc/gui/ContaActivity;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/ContaActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/ContaActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v2}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicao()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/br/ipad/isc/gui/TabsActivity;->iniciarProximaIntent(Ljava/lang/Integer;Z)V

    :goto_0
    return-void
.end method

.method public getImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public mudarTab()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/ImovelConta;->getMatriculaCondominio()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v1

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getIdImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object v0

    invoke-virtual {v0}, Lcom/br/ipad/isc/bean/SistemaParametros;->getQtdImovelCondominio()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v1}, Lcom/br/ipad/isc/bean/ImovelConta;->getPosicaoImovelCondominio()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imprimir:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/br/ipad/isc/util/ConstantesSistema;->SIM:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_0

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->proximo:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamaProximo()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamaAnterior()V

    goto :goto_0

    .line 292
    :cond_2
    iget-boolean v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->proximo:Z

    if-eqz v0, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamaProximo()V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamaAnterior()V

    goto :goto_0

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->chamaProximo()V

    :goto_0
    return-void
.end method

.method public setImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public tirarFotoConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/br/ipad/isc/gui/FotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    new-instance v1, Lcom/br/ipad/isc/bean/helpers/CameraHelper;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/br/ipad/isc/bean/helpers/CameraHelper;-><init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string p1, "helper"

    .line 98
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/br/ipad/isc/bean/SistemaParametros;->getInstancia()Lcom/br/ipad/isc/bean/SistemaParametros;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/SistemaParametros;->getCodigoEmpresaFebraban()Ljava/lang/String;

    move-result-object p1

    const-string p2, "18"

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
