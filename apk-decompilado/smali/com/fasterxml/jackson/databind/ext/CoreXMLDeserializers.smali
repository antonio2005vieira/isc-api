.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;,
        Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;,
        Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;
    }
.end annotation


# static fields
.field static final _dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/Deserializers$Base;-><init>()V

    return-void
.end method


# virtual methods
.method public findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 46
    const-class p2, Ljavax/xml/namespace/QName;

    if-ne p1, p2, :cond_0

    .line 47
    sget-object p1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;

    return-object p1

    .line 49
    :cond_0
    const-class p2, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-ne p1, p2, :cond_1

    .line 50
    sget-object p1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;

    return-object p1

    .line 52
    :cond_1
    const-class p2, Ljavax/xml/datatype/Duration;

    if-ne p1, p2, :cond_2

    .line 53
    sget-object p1, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
