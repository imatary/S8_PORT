.class Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$6;
.super Ljava/lang/Object;
.source "NotificationsSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->loadLikesPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$6;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment$6;->this$0:Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;->access$700(Lcom/sec/android/gallery3d/settings/NotificationsSettingFragment;Z)V

    const/4 v1, 0x1

    return v1
.end method
