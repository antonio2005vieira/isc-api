.class public Lcom/br/ipad/isc/bean/helpers/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fotoTipo:Ljava/lang/Integer;

.field private idConsumoAnormalidade:Ljava/lang/Integer;

.field private idLeituraAnormalidade:Ljava/lang/Integer;

.field private imovel:Lcom/br/ipad/isc/bean/ImovelConta;

.field private medicaoTipo:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/ImovelConta;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    .line 29
    iput-object p2, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->medicaoTipo:Ljava/lang/Integer;

    .line 30
    iput-object p3, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idLeituraAnormalidade:Ljava/lang/Integer;

    .line 31
    iput-object p4, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idConsumoAnormalidade:Ljava/lang/Integer;

    .line 32
    iput-object p5, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->fotoTipo:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getFotoTipo()Ljava/lang/Integer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->fotoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdConsumoAnormalidade()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIdLeituraAnormalidade()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idLeituraAnormalidade:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImovel()Lcom/br/ipad/isc/bean/ImovelConta;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-object v0
.end method

.method public getMedicaoTipo()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->medicaoTipo:Ljava/lang/Integer;

    return-object v0
.end method

.method public setFotoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->fotoTipo:Ljava/lang/Integer;

    return-void
.end method

.method public setIdConsumoAnormalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idConsumoAnormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setIdLeituraAnormalidade(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->idLeituraAnormalidade:Ljava/lang/Integer;

    return-void
.end method

.method public setImovel(Lcom/br/ipad/isc/bean/ImovelConta;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->imovel:Lcom/br/ipad/isc/bean/ImovelConta;

    return-void
.end method

.method public setMedicaoTipo(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/br/ipad/isc/bean/helpers/CameraHelper;->medicaoTipo:Ljava/lang/Integer;

    return-void
.end method
