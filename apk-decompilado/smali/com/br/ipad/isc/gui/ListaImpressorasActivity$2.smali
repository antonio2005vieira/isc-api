.class Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;
.super Ljava/lang/Object;
.source "ListaImpressorasActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/gui/ListaImpressorasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 104
    sget-object p1, Lcom/br/ipad/isc/util/ConstantesSistema;->IMPRESSORAS:[Ljava/lang/CharSequence;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/String;

    .line 105
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/helpers/Impressora;

    invoke-static {p4, p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$402(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/bean/helpers/Impressora;)Lcom/br/ipad/isc/bean/helpers/Impressora;

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/helpers/Impressora;

    move-result-object p4

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/helpers/Impressora;->getBluetoothName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/helpers/Impressora;

    move-result-object p4

    invoke-virtual {p4}, Lcom/br/ipad/isc/bean/helpers/Impressora;->getBluetoothAdress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 107
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$100(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    .line 108
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p2, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->address:Ljava/lang/String;

    invoke-static {p4, p5}, Lcom/br/ipad/isc/util/SettingsHelper;->saveBluetoothAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->friendlyName:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/br/ipad/isc/util/SettingsHelper;->savePrinterName(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/br/ipad/isc/util/SettingsHelper;->savePrinterType(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result p1
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;->printStackTrace()V

    const/4 p1, 0x0

    .line 118
    :goto_0
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/br/ipad/isc/util/SettingsHelper;->saveIsCPL(Landroid/content/Context;Z)V

    .line 119
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p4, "imovel"

    invoke-virtual {p2, p4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    .line 120
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p4, "indicadorCalcularCondominio"

    invoke-virtual {p2, p4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$602(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 122
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/bean/ImovelConta;->isCondominio()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    const-class p3, Lcom/br/ipad/isc/gui/RateioActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    const-string p3, "macro"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->finish()V

    .line 131
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p2, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 134
    :cond_0
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-virtual {p4}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1, p2, p4, p3}, Lcom/br/ipad/isc/fachada/Fachada;->verificarImpressaoConta(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/br/ipad/isc/util/Util;->chamaProximo(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)V

    goto :goto_1

    .line 144
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0b0141

    .line 145
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 146
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;->this$0:Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    const p3, 0x104000a

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2$1;

    invoke-direct {p3, p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2$1;-><init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_1
    return-void
.end method
