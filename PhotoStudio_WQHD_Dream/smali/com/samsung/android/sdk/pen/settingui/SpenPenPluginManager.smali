.class Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
.super Ljava/lang/Object;
.source "SpenPenPluginManager.java"


# instance fields
.field private mPenNumber:I

.field private final mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->initPenPlugin()V

    return-void
.end method

.method private initPenPlugin()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    const-string v5, "Pen"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    new-instance v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;-><init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->setName(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    goto :goto_0
.end method


# virtual methods
.method public getPenCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    return v0
.end method

.method public getPenPluginIndexByPackageName(Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPenPluginIndexByPenName(Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPenPluginInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public installPenPlugin(Ljava/lang/String;)V
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    const-string v6, "Pen"

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getPluginList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;-><init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->setName(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPluginInfo()Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, p1, v5, v6}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->loadPlugin(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->setPenPluginObject(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPluginManager(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    return-void
.end method

.method public uninstallPenPlugin(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->mPenNumber:I

    const/4 v1, 0x0

    goto :goto_0
.end method
