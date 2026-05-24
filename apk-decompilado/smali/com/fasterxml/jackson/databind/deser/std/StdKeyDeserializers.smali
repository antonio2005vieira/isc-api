.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcd01b6e7cfbcee7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 55
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object p0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object p0

    return-object p0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 4

    .line 64
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 66
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 71
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0

    :cond_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 76
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 79
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 81
    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 100
    const-class p2, Ljava/lang/String;

    if-eq p1, p2, :cond_e

    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto/16 :goto_0

    .line 103
    :cond_0
    const-class p2, Ljava/util/UUID;

    if-ne p1, p2, :cond_1

    .line 104
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    return-object p1

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 109
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 112
    :cond_2
    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_3

    .line 113
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    return-object p1

    .line 115
    :cond_3
    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_4

    .line 116
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    return-object p1

    .line 118
    :cond_4
    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_5

    .line 119
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    return-object p1

    .line 121
    :cond_5
    const-class p2, Ljava/util/Calendar;

    if-ne p1, p2, :cond_6

    .line 122
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    return-object p1

    .line 126
    :cond_6
    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_7

    .line 127
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    return-object p1

    .line 129
    :cond_7
    const-class p2, Ljava/lang/Byte;

    if-ne p1, p2, :cond_8

    .line 130
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    return-object p1

    .line 132
    :cond_8
    const-class p2, Ljava/lang/Character;

    if-ne p1, p2, :cond_9

    .line 133
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    return-object p1

    .line 135
    :cond_9
    const-class p2, Ljava/lang/Short;

    if-ne p1, p2, :cond_a

    .line 136
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    return-object p1

    .line 138
    :cond_a
    const-class p2, Ljava/lang/Float;

    if-ne p1, p2, :cond_b

    .line 139
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    return-object p1

    .line 141
    :cond_b
    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_c

    .line 142
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    return-object p1

    .line 144
    :cond_c
    const-class p2, Ljava/util/Locale;

    if-ne p1, p2, :cond_d

    .line 145
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;-><init>()V

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_e
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object p1

    return-object p1
.end method
