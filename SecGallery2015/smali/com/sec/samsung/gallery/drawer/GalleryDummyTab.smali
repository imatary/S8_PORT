.class public Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;
.super Ljava/lang/Object;
.source "GalleryDummyTab.java"

# interfaces
.implements Lcom/sec/samsung/gallery/drawer/GalleryTabable;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public checkAllToUpdateDynamicTabs()V
    .locals 0

    return-void
.end method

.method public getNextStateInfo(II)Lcom/sec/samsung/gallery/drawer/StateInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideTab()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1201b7

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideTabNow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;->hideTab()V

    return-void
.end method

.method public isLastTabFocused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveTab(I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public refreshTab()V
    .locals 0

    return-void
.end method

.method public removeAllMessage()V
    .locals 0

    return-void
.end method

.method public requestFocus()V
    .locals 0

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    return-void
.end method

.method public setEnableTab(Z)V
    .locals 0

    return-void
.end method

.method public showTab()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryDummyTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1201b7

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateBottomIndicator(F)V
    .locals 0

    return-void
.end method
