.class public Lcom/zebra/android/discovery/DiscoveredPrinterNetwork;
.super Lcom/zebra/android/discovery/DiscoveredPrinter;


# instance fields
.field public dnsName:Ljava/lang/String;

.field public final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/android/discovery/DiscoveredPrinter;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/zebra/android/discovery/DiscoveredPrinterNetwork;->port:I

    iput-object p1, p0, Lcom/zebra/android/discovery/DiscoveredPrinterNetwork;->dnsName:Ljava/lang/String;

    return-void
.end method
