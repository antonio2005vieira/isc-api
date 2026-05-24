.class Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/graphics/internal/NaughtyBitOutputStream;->os:Ljava/io/OutputStream;

    xor-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
