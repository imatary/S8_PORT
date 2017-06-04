.class Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$2;
.super Ljava/lang/Object;
.source "EventSharingSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$2;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$2;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    # invokes: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleLaunchNotificationActivity()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$100(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    const/4 v0, 0x0

    return v0
.end method
