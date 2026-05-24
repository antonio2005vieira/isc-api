.class public Lcom/zebra/sdk/printer/FieldDescriptionData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/zebra/sdk/printer/FieldDescriptionData;",
        ">;"
    }
.end annotation


# instance fields
.field public final fieldName:Ljava/lang/String;

.field public final fieldNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    iput-object p2, p0, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zebra/sdk/printer/FieldDescriptionData;)I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    iget p1, p1, Lcom/zebra/sdk/printer/FieldDescriptionData;->fieldNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zebra/sdk/printer/FieldDescriptionData;

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/FieldDescriptionData;->compareTo(Lcom/zebra/sdk/printer/FieldDescriptionData;)I

    move-result p1

    return p1
.end method
