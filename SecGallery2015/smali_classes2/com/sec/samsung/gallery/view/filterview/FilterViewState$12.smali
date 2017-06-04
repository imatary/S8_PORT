.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # getter for: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$2900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->checkRequiredPermissions([Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    const/16 v2, 0x69

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startChannelViewMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    goto :goto_0
.end method
