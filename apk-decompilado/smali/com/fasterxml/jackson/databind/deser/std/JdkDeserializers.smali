.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "JdkDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicReferenceDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;
    }
.end annotation


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/Class;

    .line 29
    const-class v2, Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/net/URL;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v4, Ljava/net/URI;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/io/File;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/util/Currency;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/util/regex/Pattern;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/util/Locale;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Ljava/net/InetAddress;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Ljava/nio/charset/Charset;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Ljava/lang/Class;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-class v4, Ljava/lang/StackTraceElement;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 44
    aget-object v2, v1, v3

    .line 45
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    .line 55
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    const-class v0, Ljava/net/URI;

    if-ne p0, v0, :cond_1

    .line 85
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;

    return-object p0

    .line 87
    :cond_1
    const-class v0, Ljava/net/URL;

    if-ne p0, v0, :cond_2

    .line 88
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;

    return-object p0

    .line 90
    :cond_2
    const-class v0, Ljava/io/File;

    if-ne p0, v0, :cond_3

    .line 91
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$FileDeserializer;

    return-object p0

    .line 95
    :cond_3
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_4

    .line 96
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$UUIDDeserializer;

    return-object p0

    .line 98
    :cond_4
    const-class v0, Ljava/util/Currency;

    if-ne p0, v0, :cond_5

    .line 99
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CurrencyDeserializer;

    return-object p0

    .line 101
    :cond_5
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p0, v0, :cond_6

    .line 102
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$PatternDeserializer;

    return-object p0

    .line 104
    :cond_6
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_7

    .line 105
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$LocaleDeserializer;

    return-object p0

    .line 107
    :cond_7
    const-class v0, Ljava/net/InetAddress;

    if-ne p0, v0, :cond_8

    .line 108
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$InetAddressDeserializer;

    return-object p0

    .line 110
    :cond_8
    const-class v0, Ljava/nio/charset/Charset;

    if-ne p0, v0, :cond_9

    .line 111
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$CharsetDeserializer;

    return-object p0

    .line 113
    :cond_9
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 114
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/ClassDeserializer;

    return-object p0

    .line 116
    :cond_a
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p0, v0, :cond_b

    .line 117
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$StackTraceElementDeserializer;

    return-object p0

    .line 119
    :cond_b
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, v0, :cond_c

    .line 121
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$AtomicBooleanDeserializer;

    return-object p0

    .line 124
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: can\'t find deserializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
