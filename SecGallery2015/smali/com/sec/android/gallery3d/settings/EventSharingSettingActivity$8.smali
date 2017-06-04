.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeAuth(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountDeAuthResponse;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "setAuthListener : deAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$602(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "revertSharedChannels : deAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->revertSharedChannels(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_register_on"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_on"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mStatusChangedFromOutside:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # invokes: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->bindSettingView()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$500(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # setter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mStatusChangedFromOutside:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    return-void
.end method
