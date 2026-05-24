.class public Lcom/zebra/sdk/comm/snmp/internal/OidNotFoundException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x54ba949c836b8ba4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "OidNotFoundException"

    return-object v0
.end method
