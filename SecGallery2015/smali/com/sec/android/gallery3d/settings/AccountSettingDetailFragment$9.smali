.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;
.super Lcom/samsung/android/visioncloudagent/aidl/IListener$Stub;
.source "AccountSettingDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/visioncloudagent/aidl/IListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyToApp(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string/jumbo v1, "AccountSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotifyToApp << msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ANALYSIS_SETTING_SET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->isLoadingForImageAnalysis()Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$800(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p2, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    const-string/jumbo v4, "image_analysis"

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "image_analysis"

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v4, v5, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    if-eq p2, v3, :cond_3

    move v1, v2

    :goto_1
    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setStateForImageAnalysis(I)V
    invoke-static {v4, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1000(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setLoadingStateForImageAnalysis(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1100(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method
