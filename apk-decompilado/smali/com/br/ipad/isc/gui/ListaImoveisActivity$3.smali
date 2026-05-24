.class Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;
.super Ljava/lang/Object;
.source "ListaImoveisActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 127
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private limparLista()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 133
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$202(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const p3, 0x7f0b00b1

    invoke-virtual {p2, p3}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "ISC"

    const-string p3, ""

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->limparLista()V

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object p5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p5

    invoke-virtual {p5}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContas()Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$302(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p5, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p5, v0, v1}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 147
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$700(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$702(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 156
    :goto_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v0, 0x7f0b00de

    invoke-virtual {p5, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p5, 0x2

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4

    .line 165
    :cond_3
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v0, 0x7f0b00af

    invoke-virtual {p4, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const v0, 0x7f0b00ac

    invoke-virtual {p4, v0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->limparLista()V

    .line 174
    :try_start_1
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p4

    invoke-virtual {p4}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelContasNaoLidos()Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$302(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/br/ipad/isc/excecoes/FachadaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 176
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/FachadaException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/FachadaException;->printStackTrace()V

    .line 179
    :goto_2
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 181
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 185
    :cond_5
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 187
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 191
    :cond_6
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const p4, 0x7f0b00ad

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 193
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->limparLista()V

    .line 195
    invoke-static {}, Lcom/br/ipad/isc/fachada/Fachada;->getInstance()Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p1

    invoke-virtual {p1}, Lcom/br/ipad/isc/fachada/Fachada;->buscarImovelNaoRevisitado()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 197
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$302(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ImovelRevisitar;

    .line 199
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$400(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/fachada/Fachada;

    move-result-object p4

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelRevisitar;->getMatricula()Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/br/ipad/isc/bean/ImovelConta;->getId()Ljava/lang/Integer;

    move-result-object p2

    new-instance p5, Lcom/br/ipad/isc/bean/ImovelConta;

    invoke-direct {p5}, Lcom/br/ipad/isc/bean/ImovelConta;-><init>()V

    invoke-virtual {p4, p2, p5}, Lcom/br/ipad/isc/fachada/Fachada;->pesquisarPorId(Ljava/lang/Integer;Lcom/br/ipad/isc/bean/ObjetoBasico;)Lcom/br/ipad/isc/bean/ObjetoBasico;

    move-result-object p2

    check-cast p2, Lcom/br/ipad/isc/bean/ImovelConta;

    .line 200
    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 203
    :cond_7
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 204
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 207
    :cond_8
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    new-instance p2, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    iget-object p4, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lcom/br/ipad/isc/adapters/ListaImovelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$502(Lcom/br/ipad/isc/gui/ListaImoveisActivity;Lcom/br/ipad/isc/adapters/ListaImovelAdapter;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    .line 209
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$600(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$500(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/adapters/ListaImovelAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 213
    :cond_9
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const p4, 0x7f0b00ae

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 214
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_4

    .line 216
    :cond_a
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$200(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const p4, 0x7f0b00b0

    invoke-virtual {p2, p4}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 217
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setInputType(I)V

    .line 219
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$300(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$000(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Lcom/br/ipad/isc/bean/ImovelConta;

    move-result-object p1

    if-nez p1, :cond_c

    .line 220
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_c
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p1}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_d

    .line 225
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    iget-object p2, p0, Lcom/br/ipad/isc/gui/ListaImoveisActivity$3;->this$0:Lcom/br/ipad/isc/gui/ListaImoveisActivity;

    invoke-static {p2}, Lcom/br/ipad/isc/gui/ListaImoveisActivity;->access$800(Lcom/br/ipad/isc/gui/ListaImoveisActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
