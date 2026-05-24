.class public Lcom/zebra/sdk/printer/internal/VerbosePrinter;
.super Ljava/lang/Object;


# instance fields
.field private shouldPrint:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->shouldPrint:Z

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->shouldPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/internal/VerbosePrinter;->shouldPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
