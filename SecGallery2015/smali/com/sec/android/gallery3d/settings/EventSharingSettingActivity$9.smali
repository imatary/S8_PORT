.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceResponse;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountServiceResponse;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "setServiceListener : on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$602(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->registerEventShareAlarm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_on"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$500(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "setServiceListener : off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$602(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewEventMemberListView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteMemberFromAllGroupWithSuccession(Landroid/content/Context;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_on"

    invoke-static {v0, v1, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$500(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteMemberFromAllGroup(Landroid/content/Context;)V

    goto :goto_1
.end method
