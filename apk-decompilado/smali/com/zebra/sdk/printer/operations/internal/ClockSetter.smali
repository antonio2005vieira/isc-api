.class public Lcom/zebra/sdk/printer/operations/internal/ClockSetter;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7bc8e88cd2a525c9L


# instance fields
.field private dateTime:Ljava/lang/String;

.field formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationBase;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    iput-object p1, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->dateTime:Ljava/lang/String;

    return-void
.end method

.method private formatDateTime(Ljava/lang/String;)Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->splitDateTimeFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    aget-object v5, p1, v4

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "\""

    if-eqz v6, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd-yy"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd-yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Date: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Time: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    invoke-direct {p1, p0, v1, v3}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;-><init>(Lcom/zebra/sdk/printer/operations/internal/ClockSetter;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private get100YearStartDate()Ljava/util/Date;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x7ce

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private setClock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-direct {p0, v0, v1}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->shouldUseJson(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->date:Ljava/lang/String;

    const-string v1, "\"}"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{}{\"rtc.date\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v3, v3, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v3

    iget-object v4, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v4}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v4

    new-instance v5, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v5}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->time:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{}{\"rtc.time\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v3, v3, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->getMaxTimeoutForRead()I

    move-result v2

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getTimeToWaitForMoreData()I

    move-result v3

    new-instance v4, Lcom/zebra/sdk/settings/internal/JsonValidator;

    invoke-direct {v4}, Lcom/zebra/sdk/settings/internal/JsonValidator;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zebra/sdk/comm/Connection;->sendAndWaitForValidResponse([BIILcom/zebra/sdk/comm/ResponseValidator;)[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->date:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->date:Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v2, "rtc.date"

    invoke-static {v2, v0, v1}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    :cond_2
    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->time:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    iget-object v0, v0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;->time:Ljava/lang/String;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->connection:Lcom/zebra/sdk/comm/Connection;

    const-string v2, "rtc.time"

    invoke-static {v2, v0, v1}, Lcom/zebra/sdk/printer/SGD;->SET(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shouldUseJson(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Z
    .locals 3

    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    instance-of p1, p1, Lcom/zebra/sdk/comm/StatusConnection;

    xor-int/lit8 v0, p1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private splitDateTimeFormat(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Date/Time: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->dateTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formatDateTime(Ljava/lang/String;)Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->formattedDateTime:Lcom/zebra/sdk/printer/operations/internal/ClockSetter$DateTime;

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->selectStatusChannelIfOpen()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ClockSetter;->setClock()V

    const/4 v0, 0x0

    return-object v0
.end method
