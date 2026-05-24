.class Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/internal/ProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OurAlertsWriter"
.end annotation


# instance fields
.field private myAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;->myAlerts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public shouldTransformComponent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "alerts.json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public transformComponent()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;->myAlerts:Ljava/util/List;

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->createJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
