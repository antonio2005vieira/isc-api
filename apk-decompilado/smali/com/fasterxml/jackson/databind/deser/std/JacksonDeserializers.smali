.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;
.super Ljava/lang/Object;
.source "JacksonDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;,
        Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
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

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    .line 32
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static find(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne p0, v0, :cond_0

    .line 41
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;

    return-object p0

    .line 43
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne p0, p1, :cond_0

    .line 53
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JsonLocationInstantiator;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
