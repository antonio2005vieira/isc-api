.class public Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStream;
.super Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStreamBase;-><init>(Lcom/zebra/sdk/comm/Connection;J)V

    iput-object p4, p0, Lcom/zebra/sdk/printer/internal/PrinterConnectionInputStream;->terminator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected setTerminatorBasedOnData(I)V
    .locals 0

    return-void
.end method
