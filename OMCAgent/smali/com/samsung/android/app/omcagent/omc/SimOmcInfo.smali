.class public Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;
.super Lcom/samsung/android/app/omcagent/omc/OmcInfo;
.source "SimOmcInfo.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;


# instance fields
.field private isReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isVirtualSimActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->isReady:Z

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setMcc(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setMnc(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSpn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setGroupId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSubset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setSalesCode(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC TEST MODE\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/common/Device;->isSimReady(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->isReady:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->isReady:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readSimMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setMcc(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readSimMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setMnc(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->readSimProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setServiceProviderName(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->readGroupIdLevel1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setGroupId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->readSimSubsetCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setSubsetCode(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->readSimSerialnumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setSn(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->setSalesCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->isReady:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimOmcInfo]\nmcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->gid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "subsetcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->subsetcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "salescode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->salescode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no SIM"

    goto :goto_0
.end method
