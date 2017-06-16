.class Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;
.super Ljava/lang/Object;
.source "SpenPenPluginInfo.java"


# instance fields
.field private mLoadFlag:Z

.field private mPenName:Ljava/lang/String;

.field private mSpenPenInterface:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

.field private mSpenPluginInfo:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPenInterface:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mLoadFlag:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPluginInfo:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPenInterface:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPluginInfo:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mLoadFlag:Z

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPluginInfo:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPenInterface:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    return-object v0
.end method

.method public getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPluginInfo:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mLoadFlag:Z

    return v0
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mLoadFlag:Z

    return-void
.end method

.method public setName(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->canonicalClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mPenName:Ljava/lang/String;

    return-void
.end method

.method public setPenPluginObject(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->mSpenPenInterface:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    return-void
.end method
