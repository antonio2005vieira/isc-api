.class public Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "CalendarSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(ZLjava/text/DateFormat;)V
    .locals 1

    .line 26
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2

    .line 17
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/util/Calendar;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 17
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_useTimestamp:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 53
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_0
    return-void
.end method

.method public withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    return-object p1

    .line 35
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    return-object p1
.end method

.method public bridge synthetic withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    move-result-object p1

    return-object p1
.end method
