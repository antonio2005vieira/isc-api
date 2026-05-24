.class public Lcom/br/ipad/isc/gui/ControladorAlerta;
.super Ljava/lang/Object;
.source "ControladorAlerta.java"


# instance fields
.field private c:Landroid/content/Context;

.field private idMensagem:I

.field private msg:Ljava/lang/String;

.field private resposta:Ljava/lang/Boolean;

.field private tipo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->resposta:Ljava/lang/Boolean;

    .line 29
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    .line 31
    iput-object p3, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->resposta:Ljava/lang/Boolean;

    .line 21
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    .line 22
    iput p2, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    .line 23
    iput-object p3, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->msg:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->idMensagem:I

    return-void
.end method

.method static synthetic access$002(Lcom/br/ipad/isc/gui/ControladorAlerta;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->resposta:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public defineAlerta()Z
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ControladorAlerta;->getC()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ControladorAlerta;->getTipo()I

    move-result v0

    iput v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ControladorAlerta;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    const v2, 0x104000a

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/ControladorAlerta$1;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/ControladorAlerta$1;-><init>(Lcom/br/ipad/isc/gui/ControladorAlerta;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 53
    :cond_0
    iget v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/br/ipad/isc/gui/ControladorAlerta;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    const v2, 0x7f0b0127

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/ControladorAlerta$3;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/ControladorAlerta$3;-><init>(Lcom/br/ipad/isc/gui/ControladorAlerta;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    const v2, 0x7f0b0111

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/br/ipad/isc/gui/ControladorAlerta$2;

    invoke-direct {v2, p0}, Lcom/br/ipad/isc/gui/ControladorAlerta$2;-><init>(Lcom/br/ipad/isc/gui/ControladorAlerta;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->resposta:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getC()Landroid/content/Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getIdMensagem()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->idMensagem:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTipo()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    return v0
.end method

.method public isResposta()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->resposta:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setC(Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->c:Landroid/content/Context;

    return-void
.end method

.method public setIdMensagem(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->idMensagem:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTipo(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/br/ipad/isc/gui/ControladorAlerta;->tipo:I

    return-void
.end method
