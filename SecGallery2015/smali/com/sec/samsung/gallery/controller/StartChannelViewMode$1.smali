.class Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;
.super Ljava/lang/Object;
.source "StartChannelViewMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->startChannelViewMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-class v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$1;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_0
    return-void
.end method
