.class public Lcom/zebra/sdk/comm/internal/FtpFileHolder;
.super Ljava/lang/Object;


# instance fields
.field public fileName:Ljava/lang/String;

.field public fileStream:Ljava/io/InputStream;

.field public pathOnServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->pathOnServer:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/comm/internal/FtpFileHolder;->fileStream:Ljava/io/InputStream;

    return-void
.end method
