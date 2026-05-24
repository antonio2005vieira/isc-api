.class Lcom/zebra/sdk/printer/internal/FileUtilZpl$FileObjectWithCrc32Data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/internal/FileUtilZpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileObjectWithCrc32Data"
.end annotation


# instance fields
.field public access:Ljava/lang/String;

.field public crc32:J

.field public date:Ljava/lang/String;

.field public flags:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
