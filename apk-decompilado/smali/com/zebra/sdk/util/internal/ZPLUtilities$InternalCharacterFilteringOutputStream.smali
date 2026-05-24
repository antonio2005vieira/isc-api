.class Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/util/internal/ZPLUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCharacterFilteringOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zebra/sdk/util/internal/ZPLUtilities;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/util/internal/ZPLUtilities;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/ZPLUtilities$InternalCharacterFilteringOutputStream;->this$0:Lcom/zebra/sdk/util/internal/ZPLUtilities;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

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

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/16 p1, 0x7e

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2c

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_2

    const/16 p1, 0x5e

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method
