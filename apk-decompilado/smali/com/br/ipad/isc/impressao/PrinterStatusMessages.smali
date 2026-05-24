.class public Lcom/br/ipad/isc/impressao/PrinterStatusMessages;
.super Ljava/lang/Object;
.source "PrinterStatusMessages.java"


# static fields
.field public static final HEAD_OPEN_MSG:Ljava/lang/String; = "Tampa Aberta"

.field public static final HEAD_TOO_HOT_MSG:Ljava/lang/String; = "Cabe\u00e7ote de impress\u00e3o muito quente"

.field public static final NULL_MSG:Ljava/lang/String; = "Erro n\u00e3o identificado"

.field public static final PAPER_OUT_MSG:Ljava/lang/String; = "Sem papel"

.field public static final PAUSE_MSG:Ljava/lang/String; = "Pausa"

.field public static final RECEIVE_BUFFER_FULL_MSG:Ljava/lang/String; = "Buffer cheio"

.field public static final RIBBON_OUT_MSG:Ljava/lang/String; = "Sem fita"


# instance fields
.field private printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/printer/PrinterStatus;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    return-void
.end method


# virtual methods
.method public getStatusMessage()[Ljava/lang/String;
    .locals 5

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    const/4 v2, 0x1

    const-string v3, ";"

    if-nez v1, :cond_0

    const-string v1, "Erro n\u00e3o identificado"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    .line 27
    :cond_0
    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadOpen:Z

    if-eqz v1, :cond_1

    const-string v1, "Tampa Aberta"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isHeadTooHot:Z

    if-eqz v1, :cond_2

    const-string v1, "Cabe\u00e7ote de impress\u00e3o muito quente"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isPaperOut:Z

    if-eqz v1, :cond_3

    const-string v1, "Sem papel"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isRibbonOut:Z

    if-eqz v1, :cond_4

    const-string v1, "Sem fita"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isReceiveBufferFull:Z

    if-eqz v1, :cond_5

    const-string v1, "Buffer cheio"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    :cond_5
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->printerStatus:Lcom/zebra/sdk/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isPaused:Z

    if-eqz v1, :cond_6

    const-string v1, "Pausa"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_7

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 61
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/zebra/sdk/util/internal/StringUtilities;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
