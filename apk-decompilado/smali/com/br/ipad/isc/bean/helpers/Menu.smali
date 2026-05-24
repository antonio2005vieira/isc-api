.class public Lcom/br/ipad/isc/bean/helpers/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private legenda:Ljava/lang/String;

.field private nome:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->nome:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->legenda:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLegenda()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->legenda:Ljava/lang/String;

    return-object v0
.end method

.method public getNome()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->nome:Ljava/lang/String;

    return-object v0
.end method

.method public setLegenda(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->legenda:Ljava/lang/String;

    return-void
.end method

.method public setNome(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/Menu;->nome:Ljava/lang/String;

    return-void
.end method
