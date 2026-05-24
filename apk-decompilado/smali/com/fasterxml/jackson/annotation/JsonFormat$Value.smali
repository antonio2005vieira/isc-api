.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private final shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field private final timezone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 191
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v1, ""

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
    .locals 3

    .line 195
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "##default"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 200
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v1

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 215
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    .line 216
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 4

    .line 237
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 4

    .line 223
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 4

    .line 230
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->timezone:Ljava/util/TimeZone;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 4

    .line 244
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V

    return-object v0
.end method
