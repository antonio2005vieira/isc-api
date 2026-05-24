.class public Lcom/zebra/android/printer/PrinterStatusMessages;
.super Ljava/lang/Object;


# static fields
.field public static final HEAD_OPEN_MSG:Ljava/lang/String; = "HEAD OPEN"

.field public static final HEAD_TOO_HOT_MSG:Ljava/lang/String; = "HEAD TOO HOT"

.field public static final NULL_MSG:Ljava/lang/String; = "INVALID STATUS"

.field public static final PAPER_OUT_MSG:Ljava/lang/String; = "PAPER OUT"

.field public static final PAUSE_MSG:Ljava/lang/String; = "PAUSE"

.field public static final RECEIVE_BUFFER_FULL_MSG:Ljava/lang/String; = "RECEIVE BUFFER FULL"

.field public static final RIBBON_OUT_MSG:Ljava/lang/String; = "RIBBON OUT"


# instance fields
.field private printerStatus:Lcom/zebra/android/printer/PrinterStatus;


# direct methods
.method public constructor <init>(Lcom/zebra/android/printer/PrinterStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    return-void
.end method


# virtual methods
.method public getStatusMessage()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    const/4 v2, 0x1

    const-string v3, ";"

    if-nez v1, :cond_0

    const-string v1, "INVALID STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    :cond_0
    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isHeadOpen:Z

    if-eqz v1, :cond_1

    const-string v1, "HEAD OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isHeadTooHot:Z

    if-eqz v1, :cond_2

    const-string v1, "HEAD TOO HOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isPaperOut:Z

    if-eqz v1, :cond_3

    const-string v1, "PAPER OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isRibbonOut:Z

    if-eqz v1, :cond_4

    const-string v1, "RIBBON OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isReceiveBufferFull:Z

    if-eqz v1, :cond_5

    const-string v1, "RECEIVE BUFFER FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lcom/zebra/android/printer/PrinterStatusMessages;->printerStatus:Lcom/zebra/android/printer/PrinterStatus;

    iget-boolean v1, v1, Lcom/zebra/android/printer/PrinterStatus;->isPaused:Z

    if-eqz v1, :cond_6

    const-string v1, "PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/zebra/sdk/util/internal/StringUtilities;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
