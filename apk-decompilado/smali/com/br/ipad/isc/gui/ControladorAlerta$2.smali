.class Lcom/br/ipad/isc/gui/ControladorAlerta$2;
.super Ljava/lang/Object;
.source "ControladorAlerta.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/ControladorAlerta;->defineAlerta()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/ControladorAlerta;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/ControladorAlerta;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta$2;->this$0:Lcom/br/ipad/isc/gui/ControladorAlerta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta$2;->this$0:Lcom/br/ipad/isc/gui/ControladorAlerta;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/br/ipad/isc/gui/ControladorAlerta;->access$002(Lcom/br/ipad/isc/gui/ControladorAlerta;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
