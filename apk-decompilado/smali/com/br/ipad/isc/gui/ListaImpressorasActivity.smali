.class public Lcom/br/ipad/isc/gui/ListaImpressorasActivity;
.super Lcom/br/ipad/isc/gui/BaseActivity;
.source "ListaImpressorasActivity.java"


# instance fields
.field private adapter:Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

.field private btPesquisarNovamente:Landroid/widget/Button;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private impressora:Lcom/br/ipad/isc/bean/helpers/Impressora;

.field private impressoras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private impressorasEncontradas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/br/ipad/isc/bean/helpers/Impressora;",
            ">;"
        }
    .end annotation
.end field

.field private indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

.field private lv:Landroid/widget/ListView;

.field private mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressoras:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$2;-><init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)V

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressoras:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;)Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/helpers/Impressora;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressora:Lcom/br/ipad/isc/bean/helpers/Impressora;

    return-object p0
.end method

.method static synthetic access$402(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/bean/helpers/Impressora;)Lcom/br/ipad/isc/bean/helpers/Impressora;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressora:Lcom/br/ipad/isc/bean/helpers/Impressora;

    return-object p1
.end method

.method static synthetic access$500(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p0
.end method

.method static synthetic access$502(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Lcom/br/ipad/isc/bean/ImovelConta;)Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object p1
.end method

.method static synthetic access$600(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)Ljava/lang/Integer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->indicadorCalcularCondominioSemImpressao:Ljava/lang/Integer;

    return-object p1
.end method

.method private buscarImpressorasPareadas()V
    .locals 7

    .line 175
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 182
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    const/16 v4, 0x600

    if-ne v3, v4, :cond_0

    .line 186
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 188
    new-instance v3, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->friendlyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/zebra/sdk/printer/discovery/DiscoveredPrinterBluetooth;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    new-instance v5, Lcom/br/ipad/isc/bean/helpers/Impressora;

    invoke-direct {v5}, Lcom/br/ipad/isc/bean/helpers/Impressora;-><init>()V

    .line 191
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/br/ipad/isc/bean/helpers/Impressora;->setBluetoothAdress(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/br/ipad/isc/bean/helpers/Impressora;->setBluetoothName(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressoras:Ljava/util/Map;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    iget-object v3, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->adapter:Lcom/br/ipad/isc/adapters/ListaImpressoraAdapter;

    .line 198
    iget-object v3, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->status:Landroid/widget/TextView;

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->status:Landroid/widget/TextView;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/br/ipad/isc/gui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-boolean p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->execute:Z

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->ativarBluetooth()Z

    const/4 p1, 0x5

    .line 63
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a002d

    .line 64
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/br/ipad/isc/fachada/Fachada;->setContext(Landroid/content/Context;)V

    const p1, 0x7f070108

    .line 67
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->status:Landroid/widget/TextView;

    const-string v0, ""

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->impressorasEncontradas:Ljava/util/ArrayList;

    const p1, 0x7f0700ad

    .line 73
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->lv:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f07004a

    .line 76
    invoke-virtual {p0, p1}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->btPesquisarNovamente:Landroid/widget/Button;

    .line 77
    new-instance v0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity$1;-><init>(Lcom/br/ipad/isc/gui/ListaImpressorasActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->onResume()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/br/ipad/isc/gui/BaseActivity;->onResume()V

    .line 165
    iget-boolean v0, p0, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->execute:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;->buscarImpressorasPareadas()V

    :cond_0
    return-void
.end method
