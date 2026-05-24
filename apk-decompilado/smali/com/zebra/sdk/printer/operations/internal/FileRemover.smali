.class public Lcom/zebra/sdk/printer/operations/internal/FileRemover;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41337f8b49bb6822L


# instance fields
.field private fullPathsToFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->fullPathsToFiles:Ljava/util/List;

    return-void
.end method

.method private deleteFiles()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->fullPathsToFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->isPrintingChannelInLineMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v3, "file.delete"

    invoke-static {v3, v1, v2}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{}{\"file.delete\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-virtual {v2, v1}, Lcom/zebra/sdk/comm/internal/PrinterCommandImpl;->sendAndWaitForValidJsonResponse(Lcom/zebra/sdk/comm/Connection;)[B

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/FileRemover;->deleteFiles()V

    const/4 v0, 0x0

    return-object v0
.end method
