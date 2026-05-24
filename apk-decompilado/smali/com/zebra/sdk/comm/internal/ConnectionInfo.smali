.class public Lcom/zebra/sdk/comm/internal/ConnectionInfo;
.super Ljava/lang/Object;


# instance fields
.field private myData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->myData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMyData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/comm/internal/ConnectionInfo;->myData:Ljava/lang/String;

    return-object v0
.end method
