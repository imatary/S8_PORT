.class public Lcom/sec/samsung/gallery/view/detailview/util/DetailViewStateHelper;
.super Ljava/lang/Object;
.source "DetailViewStateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionBarShowing(Lcom/sec/samsung/gallery/view/ActionBarManager;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    :cond_0
    return v0
.end method
