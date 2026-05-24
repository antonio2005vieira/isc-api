.class public Lcom/zebra/android/printer/FieldDescriptionData;
.super Ljava/lang/Object;


# instance fields
.field public final fieldName:Ljava/lang/String;

.field public final fieldNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zebra/android/printer/FieldDescriptionData;->fieldNumber:I

    iput-object p2, p0, Lcom/zebra/android/printer/FieldDescriptionData;->fieldName:Ljava/lang/String;

    return-void
.end method
