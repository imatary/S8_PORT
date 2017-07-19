.class public Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;
.super Lcom/samsung/android/app/omcagent/omc/OmcInfo;
.source "OOBOmcInfo.java"


# static fields
.field private static final KEY_GID:Ljava/lang/String; = "OMC.OOB.configuration.gid"

.field private static final KEY_MCC:Ljava/lang/String; = "OMC.OOB.configuration.mcc"

.field private static final KEY_MNC:Ljava/lang/String; = "OMC.OOB.configuration.mnc"

.field private static final KEY_MULTICSC:Ljava/lang/String; = "OMC.OOB.configuration.multicsc"

.field private static final KEY_SALESCODE:Ljava/lang/String; = "OMC.OOB.configuration.salescode"

.field private static final KEY_SPN:Ljava/lang/String; = "OMC.OOB.configuration.spn"

.field private static final KEY_SUBSET:Ljava/lang/String; = "OMC.OOB.configuration.subsetcode"

.field private static final KEY_VERSION:Ljava/lang/String; = "OMC.OOB.configuration.version"

.field public static instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/omcagent/omc/OmcInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOOBState(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->read(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "OOBE State"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "NOT OOBE State"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimChanged(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->read(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->compare(Lcom/samsung/android/app/omcagent/omc/OmcInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public read(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.version"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mcc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mnc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.spn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.gid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.subsetcode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.multicsc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.salescode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSalesCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read OOB OMC Device Info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readNWriteOOB(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.version"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mcc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mnc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.spn"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.gid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.subsetcode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.multicsc"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.salescode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSalesCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read OOB OMC Device Info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSn(Ljava/lang/String;)V

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readMultiCscCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSalesCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Default OOB OMC Device Info: \n version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->save(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.version"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mcc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->mcc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mnc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->mnc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.spn"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->spn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.gid"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->gid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.subsetcode"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->subsetcode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.multicsc"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->multicsc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.salescode"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->salescode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;->H(Ljava/lang/String;)V

    return-void
.end method

.method public setMakeOOB(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.version"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mcc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.mnc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.spn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.gid"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "OMC.OOB.configuration.subsetcode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->OMCINFO:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;->H(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setModel(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMcc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readMultiCscCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMultiCscCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setSalesCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->save(Landroid/content/Context;)V

    return-void
.end method
