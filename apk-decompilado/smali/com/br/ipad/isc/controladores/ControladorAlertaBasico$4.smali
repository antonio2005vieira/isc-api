.class Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;
.super Ljava/lang/Object;
.source "ControladorAlertaBasico.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->exbirMensagemImovelCondominioNaoCalculado(Lcom/br/ipad/isc/bean/ImovelConta;Landroid/content/Context;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;

.field final synthetic val$posicao:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;Ljava/lang/Integer;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;

    iput-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;->val$posicao:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;

    iget-object p2, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$4;->val$posicao:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->chamaProximo(I)V

    return-void
.end method
