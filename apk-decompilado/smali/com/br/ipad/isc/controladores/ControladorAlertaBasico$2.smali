.class Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$2;
.super Ljava/lang/Object;
.source "ControladorAlertaBasico.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->defineAlerta(ILjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$2;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico$2;->this$0:Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;

    invoke-virtual {p1}, Lcom/br/ipad/isc/controladores/ControladorAlertaBasico;->alertaPerguntaNao()V

    return-void
.end method
