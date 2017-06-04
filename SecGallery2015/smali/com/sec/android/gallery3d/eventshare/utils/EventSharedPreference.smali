.class public Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference;
.super Ljava/lang/Object;
.source "EventSharedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference$NotificationSettingKey;
    }
.end annotation


# static fields
.field public static final AUTO_CREATE_EVENT_FROM_CMH:Ljava/lang/String; = "auto_create_event"

.field public static final DEFAULT_ENABLE_WEBVIEW:Z = true

.field public static final DEFAULT_MAX_EVENT_NUMBER:I = 0xc8

.field public static final DEFAULT_MAX_FILES_PER_DAY:I = 0x7d0

.field public static final DEFAULT_MAX_FILE_NUMBER:I = 0x1f4

.field public static final DEFAULT_MAX_FILE_SIZE:J = 0x78L

.field public static final DEFAULT_MAX_MEMBER:I = 0xa

.field public static final DEFAULT_MAX_MEMBER_PER_DAY:I = 0xc8

.field public static final EVENT_ACTIVITY_NOTIFICATION_BADGE_COUNT:Ljava/lang/String; = "event_activity_notification_badge_count"

.field public static final EVENT_CONTENT_NOTIFICATION_BADGE_COUNT:Ljava/lang/String; = "event_content_notification_badge_count"

.field public static final EVENT_IMAGE_SUGGESTION:Ljava/lang/String; = "event_image_suggestion"

.field public static final EVENT_NOTIFICATION_BADGE_COUNT:Ljava/lang/String; = "event_notification_badge_count"

.field public static final EVENT_SHARE_NOTIFICATION_PREF:Ljava/lang/String; = "event_share_notification"

.field public static final EVENT_SHARE_ONE_DAY_LIMIT_INVITE_COUNT_PREF:Ljava/lang/String; = "event_share_one_day_limit_invite_count"

.field public static final EVENT_SHARE_ONE_DAY_LIMIT_INVITE_DAY_PREF:Ljava/lang/String; = "event_share_one_day_limit_invite_day"

.field public static final EVENT_SHARING_ADD_MEMBER_TO_GUID_GROUP:Ljava/lang/String; = "add_member_to_guid_group"

.field public static final EVENT_SHARING_NEED_TO_RESTORE_INVITE_PUSH:Ljava/lang/String; = "need_to_restore_invite_push"

.field public static final EVENT_SHARING_POLICY_ENABLE_WEBVIEW:Ljava/lang/String; = "is_available_web"

.field public static final EVENT_SHARING_POLICY_EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field public static final EVENT_SHARING_POLICY_HIDDEN_FOLDER_CLEAR_TIME:Ljava/lang/String; = "hidden_folder_clear_time"

.field public static final EVENT_SHARING_POLICY_INIT:Ljava/lang/String; = "appid"

.field public static final EVENT_SHARING_POLICY_MAX_EVENT_MEMBER:Ljava/lang/String; = "max_channel_member"

.field public static final EVENT_SHARING_POLICY_MAX_EVENT_NUMBER:Ljava/lang/String; = "max_channel_number"

.field public static final EVENT_SHARING_POLICY_MAX_FILES_PER_DAY:Ljava/lang/String; = "max_files_per_day"

.field public static final EVENT_SHARING_POLICY_MAX_FILES_PER_EVENT:Ljava/lang/String; = "max_channel_files"

.field public static final EVENT_SHARING_POLICY_MAX_FILE_SIZE:Ljava/lang/String; = "max_file_size"

.field public static final EVENT_SHARING_POLICY_MAX_MEMBER_PER_DAY:Ljava/lang/String; = "max_member_per_day"

.field public static final EVENT_SHARING_REGISTER_ON:Ljava/lang/String; = "sharing_register_on"

.field public static final EVENT_SHARING_RESTORE_FROM_SERVER:Ljava/lang/String; = "restore_from_server"

.field public static final EVENT_SHARING_SERVICE_OFF_FOR_UPSM:Ljava/lang/String; = "sharing_service_off_for_upsm"

.field public static final EVENT_SHARING_SERVICE_ON:Ljava/lang/String; = "sharing_service_on"

.field public static final EVENT_SHARING_SETTING_TOGGLED_ON:Ljava/lang/String; = "sharing_setting_on"

.field public static final KEY_COMMENTS:Ljava/lang/String; = "new_comments"

.field public static final KEY_INVITATION:Ljava/lang/String; = "story_invitation"

.field public static final KEY_LIKES:Ljava/lang/String; = "new_likes"

.field public static final KEY_MEMBER_JOIN:Ljava/lang/String; = "member_join"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "share_notification"

.field public static final KEY_POST:Ljava/lang/String; = "new_posts"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSavedValue(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/sec/android/gallery3d/eventshare/utils/EventSharedPreference$NotificationSettingKey;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "event_share_notification"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
