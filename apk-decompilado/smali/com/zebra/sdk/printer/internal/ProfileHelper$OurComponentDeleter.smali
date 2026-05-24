.class Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/internal/ProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OurComponentDeleter"
.end annotation


# instance fields
.field private myDeleteSpecification:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;->myDeleteSpecification:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public shouldTransformComponent(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;->myDeleteSpecification:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public transformComponent()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
