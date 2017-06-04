.class public Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;
.super Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;
.source "DrawerGroupDefault.java"


# instance fields
.field private mDefaultGroup:Lcom/sec/samsung/gallery/drawer/Group;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->mDefaultGroup:Lcom/sec/samsung/gallery/drawer/Group;

    sget-object v0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/sec/samsung/gallery/drawer/Group;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->mDefaultGroup:Lcom/sec/samsung/gallery/drawer/Group;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/Group;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->mDefaultGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefault;->mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/IDrawerCallback;->onUpdate()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
