.class Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/util/internal/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryData"
.end annotation


# instance fields
.field extraData:[B

.field name:Ljava/lang/String;

.field srcData:[B

.field srcFile:Ljava/io/File;

.field final synthetic this$0:Lcom/zebra/sdk/util/internal/ZipUtil;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->this$0:Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->this$0:Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;Ljava/io/File;[B)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->this$0:Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p4, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->extraData:[B

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->this$0:Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZipUtil;Ljava/lang/String;[B[B)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->this$0:Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcFile:Ljava/io/File;

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p2, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->srcData:[B

    iput-object p4, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->extraData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;

    iget-object p1, p1, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/ZipUtil$EntryData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
