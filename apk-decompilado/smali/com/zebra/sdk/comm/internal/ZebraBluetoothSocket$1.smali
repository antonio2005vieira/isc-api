.class Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;


# direct methods
.method constructor <init>(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;->this$0:Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;->this$0:Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;

    invoke-static {v0}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->access$000(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;->this$0:Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;

    invoke-virtual {v1}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->close()V

    iget-object v1, p0, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket$1;->this$0:Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;

    invoke-static {v1, v0}, Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;->access$100(Lcom/zebra/sdk/comm/internal/ZebraBluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Thrown during runnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
