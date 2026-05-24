.class public Lcom/zebra/sdk/util/internal/Range;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1252326198951387L


# instance fields
.field private begin:I

.field private end:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zebra/sdk/util/internal/Range;->begin:I

    iput p2, p0, Lcom/zebra/sdk/util/internal/Range;->end:I

    return-void
.end method


# virtual methods
.method public containsInt(I)Z
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/util/internal/Range;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zebra/sdk/util/internal/Range;->end:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
