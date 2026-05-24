.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "ViewMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Empty"
.end annotation


# static fields
.field static final instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
