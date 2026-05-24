.class public final Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/SerializerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeKey"
.end annotation


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 217
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 218
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 210
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 211
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method private static final hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I
    .locals 0

    .line 230
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method private static final hash(Ljava/lang/Class;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 282
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 283
    iget-boolean v2, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    if-ne v2, v3, :cond_5

    .line 284
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v2, :cond_4

    .line 285
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return v0
.end method

.method public resetTyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    .line 252
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 255
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetTyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 239
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 241
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetUntyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 262
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetUntyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 246
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 248
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const-string v1, "}"

    const-string v2, ", typed? "

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
