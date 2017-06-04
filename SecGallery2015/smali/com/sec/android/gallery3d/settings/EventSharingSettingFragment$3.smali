.class Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;
.super Ljava/lang/Object;
.source "EventSharingSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadNotificationPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)Landroid/content/Context;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->saveNotificationPrefrence(Landroid/content/Context;Z)V

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->FEATURE_USE_NOTIFICATION_SETTING:Z
    invoke-static {}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->updateDependantPreferences(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
