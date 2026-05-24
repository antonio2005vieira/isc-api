.class public Lcom/br/ipad/isc/bean/helpers/Impressora;
.super Ljava/lang/Object;
.source "Impressora.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bluetoothAdress:Ljava/lang/String;

.field private bluetoothName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 47
    :cond_2
    check-cast p1, Lcom/br/ipad/isc/bean/helpers/Impressora;

    .line 48
    iget-object v2, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 49
    iget-object p1, p1, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 51
    :cond_3
    iget-object p1, p1, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getBluetoothAdress()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setBluetoothAdress(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothAdress:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/Impressora;->bluetoothName:Ljava/lang/String;

    return-void
.end method
