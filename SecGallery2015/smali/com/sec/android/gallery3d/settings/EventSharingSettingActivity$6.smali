.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->initialSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceOn(Z)V
    .locals 2

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "setServiceOnListener : serviceOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$400(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # invokes: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->bindSettingView()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$500(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    goto :goto_0
.end method
