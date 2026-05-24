.class public Lcom/zebra/sdk/settings/internal/SgdValidator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/comm/ResponseValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResponseComplete([B)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-byte p1, p1, v1

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
