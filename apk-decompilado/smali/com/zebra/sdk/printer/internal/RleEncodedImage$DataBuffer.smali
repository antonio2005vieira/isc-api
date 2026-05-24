.class public Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/internal/RleEncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBuffer"
.end annotation


# instance fields
.field currentIndex:I

.field imageData:[B

.field final synthetic this$0:Lcom/zebra/sdk/printer/internal/RleEncodedImage;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/internal/RleEncodedImage;[B)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->this$0:Lcom/zebra/sdk/printer/internal/RleEncodedImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->currentIndex:I

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->imageData:[B

    return-void
.end method

.method static synthetic access$000(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)I
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->bytesLeft()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;)B
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->peek()B

    move-result p0

    return p0
.end method

.method private bytesLeft()I
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->imageData:[B

    array-length v0, v0

    iget v1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->currentIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private peek()B
    .locals 2

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->imageData:[B

    iget v1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->currentIndex:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public getByte()B
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->imageData:[B

    iget v1, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zebra/sdk/printer/internal/RleEncodedImage$DataBuffer;->currentIndex:I

    aget-byte v0, v0, v1

    return v0
.end method
