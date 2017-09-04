.class Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;
.super Lcom/android/launcher3/executor/AbstractAppsStateHandler;
.source "AppsFolderAddIconStateHandler.java"


# instance fields
.field private mAppAnapho:Ljava/lang/String;

.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

.field private mIsSelectAll:Z

.field private mOrdinal:I

.field private mRuleID:Ljava/lang/String;

.field private final mRuleID_94:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/executor/ExecutorState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/executor/AbstractAppsStateHandler;-><init>(Lcom/android/launcher3/executor/ExecutorState;)V

    const-string v0, "Home_94"

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID_94:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/executor/StateAppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/executor/StateAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    iget-object v1, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/executor/StateAppInfoHolder;->setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/executor/StateExecutionCallback;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v8, "Home_94"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCount()I

    move-result v5

    if-nez v5, :cond_1

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "Text"

    const-string v9, "Match"

    const-string v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->completeExecuteRequest(Lcom/android/launcher3/executor/StateExecutionCallback;I)V

    return-void

    :cond_1
    if-ne v5, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_0

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "Text"

    const-string v9, "Match"

    const-string v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "Text"

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder()I

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mStateId:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SelectedAll"

    const-string v9, "Exist"

    const-string v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    const/16 v8, -0x3e7

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    if-lt v5, v7, :cond_5

    iget v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    if-lez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(I)I

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Valid"

    const-string v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "OrdinalNumber"

    iget v9, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_5
    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Valid"

    const-string v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/proxy/LauncherProxy;->getSearchResultListCheckedCount()I

    move-result v0

    if-ge v0, v9, :cond_7

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "OrdinalNumber"

    const-string v9, "Exist"

    const-string v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/launcher3/proxy/LauncherProxy;->addSearchResultItemToFolder(Z)I

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SelectedAll"

    const-string v9, "Exist"

    const-string v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    const-string v8, "apps_count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v9, :cond_9

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "multi"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/proxy/LauncherProxy;->addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x1

    new-instance v7, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v8, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v8}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string v8, "SingleApp"

    const-string v9, "Match"

    const-string v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mNlgRequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method public parseParameters(Lcom/samsung/android/sdk/bixby/data/State;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    const-string v4, "PARAM_CHECK_ERROR"

    :goto_0
    return-object v4

    :cond_1
    invoke-static {v2}, Lcom/android/launcher3/executor/StateParamHelper;->newHelper(Ljava/util/Map;)Lcom/android/launcher3/executor/StateParamHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mRuleID:Ljava/lang/String;

    const-string v5, "Home_94"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SelectedAll"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->BOOLEAN:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SelectedAll"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mIsSelectAll:Z

    :cond_2
    :goto_1
    const-string v4, "PARAM_CHECK_OK"

    goto :goto_0

    :cond_3
    const-string v4, "OrdinalNumber"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->INTEGER:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OrdinalNumber"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mOrdinal:I

    goto :goto_1

    :cond_4
    const-string v4, "SelectedAppAnapho"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SelectedAppAnapho"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppAnapho:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const-string v4, "AppName"

    sget-object v5, Lcom/android/launcher3/executor/StateParamHelper$Type;->STRING:Lcom/android/launcher3/executor/StateParamHelper$Type;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/executor/StateParamHelper;->hasSlotValue(Ljava/lang/String;Lcom/android/launcher3/executor/StateParamHelper$Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "AppName"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/executor/StateParamHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "PARAM_CHECK_ERROR"

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/executor/StateAppInfo;->setComponentName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/executor/StateAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u00a0"

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/executor/AppsFolderAddIconStateHandler;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/executor/StateAppInfo;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
