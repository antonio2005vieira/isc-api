.class public Lcom/zebra/sdk/printer/internal/SgdFromProfileResult;
.super Ljava/lang/Object;


# instance fields
.field public final Sgds:Ljava/lang/String;

.field public final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/SgdFromProfileResult;->Sgds:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/SgdFromProfileResult;->errors:Ljava/util/List;

    return-void
.end method
