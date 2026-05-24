.class public Lcom/zebra/sdk/settings/SettingsException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x20cacd6e2fd99f14L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Setting not found"

    invoke-direct {p0, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
