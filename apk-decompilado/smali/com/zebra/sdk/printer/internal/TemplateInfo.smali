.class public Lcom/zebra/sdk/printer/internal/TemplateInfo;
.super Ljava/lang/Object;


# instance fields
.field public contents:Ljava/lang/String;

.field public isLocalToComputer:Z

.field public pathOnPrinter:Ljava/lang/String;

.field public variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->isLocalToComputer:Z

    return-void
.end method

.method private extractVariableFieldsFromZpl()[Lcom/zebra/sdk/printer/FieldDescriptionData;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->contents:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->getVariableFieldsS(Ljava/lang/String;)[Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object v0

    return-object v0
.end method

.method private getTemplateFromPrinter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinter;->retrieveFormatFromPrinter(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->contents:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->isLocalToComputer:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_3
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    throw p1

    :catch_2
    :cond_1
    :goto_1
    return-void
.end method

.method private readTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->isLocalToComputer:Z

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/FileReader;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->contents:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/TemplateInfo;->getTemplateFromPrinter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->contents:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Template file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") does not exist or is empty."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquire(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/printer/internal/TemplateInfo;->readTemplate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->contents:Ljava/lang/String;

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/FormatUtilZpl;->extractDFName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->pathOnPrinter:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/internal/TemplateInfo;->extractVariableFieldsFromZpl()[Lcom/zebra/sdk/printer/FieldDescriptionData;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/TemplateInfo;->variableFields:[Lcom/zebra/sdk/printer/FieldDescriptionData;

    return-void
.end method
