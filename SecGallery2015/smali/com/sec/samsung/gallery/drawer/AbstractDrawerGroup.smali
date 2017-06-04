.class abstract Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;
.super Ljava/lang/Object;
.source "AbstractDrawerGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;
    }
.end annotation


# instance fields
.field protected groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

.field protected final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field protected final mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;->mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;

    return-void
.end method


# virtual methods
.method protected getGroupType()Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    return-object v0
.end method

.method public abstract initialize()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method
