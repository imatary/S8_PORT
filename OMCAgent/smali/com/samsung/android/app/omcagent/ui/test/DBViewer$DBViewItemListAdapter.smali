.class public Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DBViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/DBViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBViewItemListAdapter"
.end annotation


# instance fields
.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/test/DBViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/omcagent/ui/test/DBViewer;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->this$0:Lcom/samsung/android/app/omcagent/ui/test/DBViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->itemList:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04000c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->itemList:Ljava/util/List;

    if-nez v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "App List is null"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object p2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewItemListAdapter;->itemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;

    if-nez v0, :cond_2

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "App Item is null"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v5, 0x7f0e0030

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0e0031

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0e0033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0e0013

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/test/DBViewer$DBViewerItem;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
