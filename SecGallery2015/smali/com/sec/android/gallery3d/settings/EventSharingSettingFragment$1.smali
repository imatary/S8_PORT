.class Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$1;
.super Ljava/lang/Object;
.source "EventSharingSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadWifiPreference()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleUploadViaWifi(Z)Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$000(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;Z)Z

    move-result v0

    return v0
.end method
