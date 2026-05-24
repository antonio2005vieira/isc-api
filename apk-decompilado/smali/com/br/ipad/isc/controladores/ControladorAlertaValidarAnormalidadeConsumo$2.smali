.class Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;
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

    .line 147
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p3, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$tipoMedicao:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$tipoMedicao:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo$2;->val$idConsumoAnormalidade:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0, v1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarAnormalidadeConsumo;->tirarFotoConsumoAnormalidade(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
