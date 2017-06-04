.class Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;
.super Ljava/lang/Object;
.source "DrawerItemSLink.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

.field final synthetic val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$currentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field final synthetic val$isPickMode:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;Landroid/widget/CheckBox;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    iput-object p2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p4, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$currentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$isPickMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "allow_mobile_network"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$currentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$isPickMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$currentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$isPickMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->getMediaSetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$2;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
