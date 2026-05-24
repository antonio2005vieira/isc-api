.class public Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
.super Ljava/lang/Object;


# instance fields
.field fileRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public filterByExtension([Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 7

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zebra/sdk/printer/PrinterObjectProperties;

    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/zebra/sdk/printer/PrinterObjectProperties;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public get(I)Lcom/zebra/sdk/printer/PrinterObjectProperties;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zebra/sdk/printer/PrinterObjectProperties;

    return-object p1
.end method

.method public getFileNamesFromProperties()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zebra/sdk/printer/PrinterObjectProperties;

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/PrinterObjectProperties;->getFullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getObjectsProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->fileRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
