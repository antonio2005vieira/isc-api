.class Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio$1;
.super Ljava/lang/Object;
.source "ControladorRateioImovelCondominio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->concluirRateio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio$1;->this$0:Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;

    .line 231
    invoke-static {v0}, Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;->access$000(Lcom/br/ipad/isc/controladores/ControladorRateioImovelCondominio;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/br/ipad/isc/controladores/ControladorBasico;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/br/ipad/isc/conexao/ComunicacaoWebServer;->enviarImovelOnLine(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method
