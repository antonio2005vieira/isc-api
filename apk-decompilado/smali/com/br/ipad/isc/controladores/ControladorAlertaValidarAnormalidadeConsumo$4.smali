.class Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;
.super Ljava/lang/Object;
.source "ControladorAlertaValidarAnormalidadeConsumo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->alertConsumoAnormalidadeObrigatorioFoto(Ljava/lang/Integer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

.field final synthetic val$idConsumoAnormalidade:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;Ljava/lang/Integer;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    invoke-static {p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$300(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    invoke-static {v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->access$400(Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$4;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tirarFotoConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
