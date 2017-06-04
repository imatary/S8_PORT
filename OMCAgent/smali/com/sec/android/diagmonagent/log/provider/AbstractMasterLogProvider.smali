.class public abstract Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/AbstractLogProvider;
.source "AbstractMasterLogProvider.java"


# static fields
.field public static final AGREED:Ljava/lang/String; = "agreed"

.field public static final DEFAULT_MO:Ljava/lang/String; = "defaultMO"

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_INFO:Ljava/lang/String; = "deviceInfo"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final PUSH_REGISTERED:Ljava/lang/String; = "pushRegistered"

.field public static final REGISTERED:Ljava/lang/String; = "registered"

.field public static final SERVICE_NAME:Ljava/lang/String; = "serviceName"

.field public static final SUPPORT_PUSH:Ljava/lang/String; = "supportPush"

.field public static final TRY_REGISTERING:Ljava/lang/String; = "tryRegistering"

.field public static final UPLOAD_WIFIONLY:Ljava/lang/String; = "uploadWifionly"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractLogProvider;-><init>()V

    return-void
.end method

.method private enforceAgreement()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->isAgreed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->enforceSelfOrSystem()V

    const-string v1, "get"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "agreed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "agreed"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->isAgreed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "get"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "registered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->enforceAgreement()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/AbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract isAgreed()Z
.end method

.method public onCreate()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractLogProvider;->onCreate()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "registered"

    const-string v4, "registered"

    invoke-direct {p0, v4, v0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "pushRegistered"

    const-string v4, "pushRegistered"

    invoke-direct {p0, v4, v0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "tryRegistering"

    const-string v3, "tryRegistering"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "nonce"

    const-string v3, "nonce"

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "authorityList"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setAuthorityList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "serviceName"

    const-string v3, "serviceName"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "deviceId"

    const-string v3, "deviceId"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "defaultMO"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setDefaultMO()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "deviceInfo"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setDeviceInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "uploadWifionly"

    const-string v3, "uploadWifionly"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setUploadWiFiOnly()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "supportPush"

    const-string v3, "supportPush"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->setSupportPush()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method protected abstract setAuthorityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract setDefaultMO()Landroid/os/Bundle;
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/PackageInformation;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->getTWID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setDeviceInfo()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/PackageInformation;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/AbstractMasterLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/PackageInformation;->getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setServiceName()Ljava/lang/String;
.end method

.method protected setSupportPush()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setUploadWiFiOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
