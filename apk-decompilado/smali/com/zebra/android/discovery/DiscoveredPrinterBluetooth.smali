.class public Lcom/zebra/android/discovery/DiscoveredPrinterBluetooth;
.super Lcom/zebra/android/discovery/DiscoveredPrinter;


# instance fields
.field public final friendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/android/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zebra/android/discovery/DiscoveredPrinterBluetooth;->friendlyName:Ljava/lang/String;

    return-void
.end method
