.class Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;
.super Ljava/lang/Object;
.source "SLinkViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->selectItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

.field final synthetic val$mMediaSetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->val$mMediaSetPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$1100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$1100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$1100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->val$mMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$5;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$1200(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
