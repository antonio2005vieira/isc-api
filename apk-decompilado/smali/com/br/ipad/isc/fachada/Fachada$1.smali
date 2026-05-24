.class Lcom/br/ipad/isc/fachada/Fachada$1;
.super Ljava/lang/Object;
.source "Fachada.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/fachada/Fachada;->calcularEmBackground(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/fachada/Fachada;

.field final synthetic val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field final synthetic val$proximo:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/fachada/Fachada;Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->this$0:Lcom/br/ipad/isc/fachada/Fachada;

    iput-object p2, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    iput-object p3, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->val$proximo:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 772
    iget-object v0, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->this$0:Lcom/br/ipad/isc/fachada/Fachada;

    iget-object v1, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->val$imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/fachada/Fachada$1;->val$proximo:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/br/ipad/isc/fachada/Fachada;->calcularConta(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    return-void
.end method
