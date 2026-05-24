.class Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zebra/sdk/printer/operations/internal/ClockSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateTime"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field final synthetic this$0:Lcom/zebra/sdk/printer/operations/internal/ClockSetter;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/operations/internal/ClockSetter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->this$0:Lcom/zebra/sdk/printer/operations/internal/ClockSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->date:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->time:Ljava/lang/String;

    return-void
.end method
