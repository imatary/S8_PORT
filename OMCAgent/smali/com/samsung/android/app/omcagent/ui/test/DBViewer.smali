.class public Lcom/samsung/android/app/omcagent/ui/test/DBViewer;
.super Landroid/app/Activity;
.source "DBViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;,
        Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;
    }
.end annotation


# instance fields
.field appListView:Landroid/widget/ListView;

.field dbViewItemListAdapter:Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;

.field mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;",
            ">;"
        }
    .end annotation
.end field

.field mResInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 13

    const/4 v12, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v8, 0x7f0e0009

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/db/OmcPref$LOAD_PRELOAD_STATE;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0e000a

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->appListView:Landroid/widget/ListView;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v8, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    new-instance v6, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;

    invoke-direct {v6, v12}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DBViewer$1;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$INSTALL_MODE;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setSize(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$STATE;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setState(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v8, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;

    invoke-direct {v2, v12}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DBViewer$1;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppTitle : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setSize(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo$STATE;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->setState(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->mItemList:Ljava/util/List;

    invoke-direct {v3, p0, p0, v8}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DBViewer;Landroid/content/Context;Ljava/util/List;)V

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer;->appListView:Landroid/widget/ListView;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
