.class final Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final _data:[Ljava/lang/Object;

.field _next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()[Ljava/lang/Object;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    return-object v0
.end method

.method public linkNext(Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    if-nez v0, :cond_0

    .line 249
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    return-void

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    return-object v0
.end method
