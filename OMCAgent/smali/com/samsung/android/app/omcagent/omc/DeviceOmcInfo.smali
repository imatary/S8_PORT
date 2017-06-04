.class public Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;
.super Lcom/samsung/android/app/omcagent/omc/OmcInfo;
.source "DeviceOmcInfo.java"


# static fields
.field private static final KEY_GID:Ljava/lang/String; = "OMC.configuration.gid"

.field private static final KEY_MCC:Ljava/lang/String; = "OMC.configuration.mcc"

.field private static final KEY_MNC:Ljava/lang/String; = "OMC.configuration.mnc"

.field private static final KEY_MODEL:Ljava/lang/String; = "OMC.configuration.model"

.field private static final KEY_MULTICSC:Ljava/lang/String; = "OMC.configuration.multicsc"

.field private static final KEY_SALESCODE:Ljava/lang/String; = "OMC.configuration.salescode"

.field private static final KEY_SN:Ljava/lang/String; = "OMC.configuration.sn"

.field private static final KEY_SPN:Ljava/lang/String; = "OMC.configuration.spn"

.field private static final KEY_SUBSET:Ljava/lang/String; = "OMC.configuration.subset"

.field private static final KEY_VERSION:Ljava/lang/String; = "OMC.configuration.version"

.field public static instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.model"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setModel(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mcc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mnc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.sn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSn(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.multicsc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.salescode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSalesCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.version"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->mcc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->mnc:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.spn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.gid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.subset"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setModel(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public read(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.model"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setModel(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mcc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mnc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMnc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->model:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "read OMC Device Info"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.version"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.spn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.gid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.subset"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.sn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSn(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.multicsc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.salescode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSalesCode(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSn(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Default OMC Device Info: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setModel(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readMultiCscCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSalesCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "set Default OMC Device Info"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->save(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.version"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.model"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->model:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mcc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->mcc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.mnc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->mnc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.spn"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->spn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.gid"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->gid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.subset"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->subsetcode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.sn"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->sn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.multicsc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->multicsc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.salescode"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->salescode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;->H(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setModel(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSn(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readMultiCscCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSalesCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->save(Landroid/content/Context;)V

    return-void
.end method

.method public updateVersionOnly(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.configuration.version"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
