.class Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$2;
.super Ljava/lang/Object;
.source "SelecionarArquivoActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;


# direct methods
.method constructor <init>(Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/br/ipad/isc/gui/SelecionarArquivoActivity$2;->this$0:Lcom/br/ipad/isc/gui/SelecionarArquivoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
