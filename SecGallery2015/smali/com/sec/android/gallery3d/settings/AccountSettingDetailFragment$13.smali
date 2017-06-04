.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;
.super Ljava/lang/Object;
.source "AccountSettingDetailFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetEventSettingPreferences()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "event_image_suggestion"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "freeze"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelFreezeColumn(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "5005"

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "freeze"

    invoke-static {v1, v2, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelFreezeColumn(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "5005"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
