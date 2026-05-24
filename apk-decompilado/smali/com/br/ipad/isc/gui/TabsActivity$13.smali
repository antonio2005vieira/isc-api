.class Lcom/br/ipad/isc/gui/TabsActivity$13;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->exibirAlertaLeituraAlterada()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/TabsActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/TabsActivity;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1555
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/TabsActivity;->access$200(Lcom/br/ipad/isc/gui/TabsActivity;Z)V

    .line 1558
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->verificarImovelCondominio()V

    .line 1564
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_1

    .line 1565
    sget-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraAgua:Landroid/widget/EditText;

    .line 1566
    sget-object v3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadeAgua:Landroid/widget/EditText;

    .line 1567
    sget-object v4, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerAgua:Landroid/widget/Spinner;

    .line 1569
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1573
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    .line 1574
    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v3, v3, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {v3}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1575
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1576
    iget-object p2, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1579
    :cond_0
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 1580
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 1581
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1583
    :cond_1
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    if-eqz p1, :cond_3

    .line 1584
    sget-object p1, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->leituraPoco:Landroid/widget/EditText;

    .line 1585
    sget-object p2, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->idAnormalidadePoco:Landroid/widget/EditText;

    .line 1586
    sget-object v3, Lcom/br/ipad/isc/gui/HidrometroBaseActivity;->anormalidadeSpinnerPoco:Landroid/widget/Spinner;

    .line 1588
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1592
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    .line 1593
    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object p2, p2, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarConsumoHistoricoPorImovelIdTipoLigacao(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/br/ipad/isc/bean/ConsumoHistorico;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1594
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1595
    iget-object p2, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/fachada/Fachada;->remover(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    .line 1598
    :cond_2
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setLeitura(Ljava/lang/Integer;)V

    .line 1599
    sget-object p1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, v1}, Lcom/br/ipad/isc/bean/HidrometroInstalado;->setAnormalidade(Ljava/lang/Integer;)V

    .line 1600
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$13;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$300(Lcom/br/ipad/isc/gui/TabsActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    sget-object p2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/fachada/Fachada;->atualizar(Lcom/br/ipad/isc/bean/ObjetoBasico;)V

    :cond_3
    return-void
.end method
