.class Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;
.super Ljava/lang/Object;
.source "NotificationsSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadNotificationPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

.field final synthetic val$value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    iput-object p2, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->val$value:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->access$000(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5058"

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->val$value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->access$100(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->access$200(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
