.class public Lcom/zebra/sdk/graphics/ZebraImageFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImage(Landroid/graphics/Bitmap;)Lcom/zebra/sdk/graphics/ZebraImageI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getImage(Ljava/io/InputStream;)Lcom/zebra/sdk/graphics/ZebraImageI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static getImage(Ljava/lang/String;)Lcom/zebra/sdk/graphics/ZebraImageI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageAndroid;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
