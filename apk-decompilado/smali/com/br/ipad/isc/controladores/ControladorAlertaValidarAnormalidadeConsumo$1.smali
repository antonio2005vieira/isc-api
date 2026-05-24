.class Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;
.super Ljava/lang/Object;
.source "ControladorAlertaValidarAnormalidadeConsumo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->alertConsumoAnormalidadeSubstituirFoto(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

.field final synthetic val$idConsumoAnormalidade:Ljava/lang/Integer;

.field final synthetic val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field final synthetic val$tipoMedicao:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$tipoMedicao:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$tipoMedicao:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-static {p1, p2, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$000(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    invoke-static {p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$100(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)V

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    invoke-static {p2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$200(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0b002b

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    .line 166
    invoke-static {p2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$200(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0b00d2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0600d1

    .line 167
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 168
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    .line 169
    invoke-static {p2}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$200(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0b0127

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
