.class public final Lcom/br/ipad/isc/bean/Foto$FotosTipos;
.super Ljava/lang/Object;
.source "Foto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/br/ipad/isc/bean/Foto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FotosTipos"
.end annotation


# instance fields
.field public final CAMINHO:Ljava/lang/String;

.field public final CONSUMO_ANORMALIDADE_ID:Ljava/lang/String;

.field public final DATA:Ljava/lang/String;

.field public final FOTO_TIPO:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IMOVEL_CONTA_ID:Ljava/lang/String;

.field public final INDICADOR_TRANSMITIDO:Ljava/lang/String;

.field public final LEITURA_ANORMALIDADE_ID:Ljava/lang/String;

.field public final MEDICAOTIPO:Ljava/lang/String;

.field final synthetic this$0:Lcom/br/ipad/isc/bean/Foto;

.field private tipos:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/br/ipad/isc/bean/Foto;)V
    .locals 8

    .line 142
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->this$0:Lcom/br/ipad/isc/bean/Foto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, " INTEGER PRIMARY KEY AUTOINCREMENT "

    .line 143
    iput-object p1, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->ID:Ljava/lang/String;

    const-string v0, " INTEGER CONSTRAINT [FK1_FOTO] REFERENCES [imovel_conta]([IMOV_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 144
    iput-object v0, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->IMOVEL_CONTA_ID:Ljava/lang/String;

    const-string v1, " VARCHAR(90) NOT NULL "

    .line 145
    iput-object v1, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->CAMINHO:Ljava/lang/String;

    const-string v2, " INTEGER NOT NULL "

    .line 146
    iput-object v2, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->INDICADOR_TRANSMITIDO:Ljava/lang/String;

    const-string v3, " TIMESTAMP NOT NULL "

    .line 147
    iput-object v3, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->DATA:Ljava/lang/String;

    const-string v4, " INTEGER CONSTRAINT [FK2_FOTO] REFERENCES [leitura_anormalidade]([LTAN_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 148
    iput-object v4, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->LEITURA_ANORMALIDADE_ID:Ljava/lang/String;

    const-string v5, " INTEGER CONSTRAINT [FK3_FOTO] REFERENCES [consumo_anormalidade]([CSAN_ID]) ON DELETE RESTRICT ON UPDATE RESTRICT "

    .line 149
    iput-object v5, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->CONSUMO_ANORMALIDADE_ID:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->FOTO_TIPO:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->MEDICAOTIPO:Ljava/lang/String;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v0, v6, p1

    const/4 p1, 0x2

    aput-object v1, v6, p1

    const/4 p1, 0x3

    aput-object v2, v6, p1

    const/4 p1, 0x4

    aput-object v3, v6, p1

    const/4 p1, 0x5

    aput-object v4, v6, p1

    const/4 p1, 0x6

    aput-object v5, v6, p1

    const/4 p1, 0x7

    aput-object v2, v6, p1

    const/16 p1, 0x8

    aput-object v2, v6, p1

    .line 153
    iput-object v6, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->tipos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTipos()[Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/br/ipad/isc/bean/Foto$FotosTipos;->tipos:[Ljava/lang/String;

    return-object v0
.end method
