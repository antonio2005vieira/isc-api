.class Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;
.super Ljava/lang/Object;
.source "ListaImoveisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ListaImoveisActivity;->setUpWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "ISC"

    .line 257
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 259
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    const v1, 0x104000a

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v4, 0x7f0b00de

    invoke-virtual {v3, v4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0b00ae

    const v4, 0x7f0b00af

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {v6}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object v0

    check-cast v0, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 267
    invoke-static {v2, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    goto/16 :goto_0

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v6, 0x7f0b00ab

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPorHidrometro(Ljava/lang/String;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    goto/16 :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v5, v4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPorQuadra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$302(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 279
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance v2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 281
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v5, v3}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaPosicao(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    goto :goto_0

    .line 289
    :cond_3
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v6, 0x7f0b00b0

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContaSequencial(I)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$002(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;

    .line 294
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance v2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object v6, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v6}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 298
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    .line 301
    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v2, v4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    .line 302
    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    if-nez v0, :cond_a

    .line 304
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v3, 0x7f0b00a1

    .line 305
    invoke-virtual {v2, v3}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    .line 306
    invoke-virtual {v2, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$1;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$1;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v0}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 327
    :cond_9
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v2, 0x7f0b00a2

    .line 328
    invoke-virtual {v0, v2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    .line 329
    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$2;

    invoke-direct {v1, p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4$2;-><init>(Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 340
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 341
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$4;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
