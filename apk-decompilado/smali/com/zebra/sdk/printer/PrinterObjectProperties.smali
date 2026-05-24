.class public abstract Lcom/zebra/sdk/printer/PrinterObjectProperties;
.super Ljava/lang/Object;


# instance fields
.field protected CRC32:J

.field protected drivePrefix:Ljava/lang/String;

.field protected extension:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCRC32()J
    .locals 2

    iget-wide v0, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->CRC32:J

    return-wide v0
.end method

.method public getDrivePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->drivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->fileSize:J

    return-wide v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->drivePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCRC32(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->CRC32:J

    return-void
.end method

.method public setDrivePrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->drivePrefix:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zebra/sdk/printer/PrinterObjectProperties;->fileSize:J

    return-void
.end method
