.class Lcom/br/ipad/isc/gui/TabsActivity$1;
.super Ljava/lang/Object;
.source "TabsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/TabsActivity;->setUpWidgets()V
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

    .line 342
    iput-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$1;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 346
    iget-object p1, p0, Lcom/br/ipad/isc/gui/TabsActivity$1;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/TabsActivity;->access$000(Lcom/br/ipad/isc/gui/TabsActivity;)Ljava/lang/Integer;

    move-result-object p1

    .line 348
    new-instance v0, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;

    sget-object v1, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoAgua:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    sget-object v2, Lcom/br/ipad/isc/gui/TabsActivity;->hidrometroInstaladoPoco:Lcom/br/ipad/isc/bean/HidrometroInstalado;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/TabsActivity$1;->this$0:Lcom/br/ipad/isc/gui/TabsActivity;

    iget-object v3, v3, Lcom/br/ipad/isc/gui/TabsActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;-><init>(Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/HidrometroInstalado;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;)V

    .line 351
    invoke-virtual {v0}, Lcom/br/ipad/isc/controladores/ControladorAlertaValidarFoto;->iniciarCamera()V

    return-void
.end method
