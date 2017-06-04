.class public Lcom/samsung/android/sdk/samsunglink/SlinkConstants;
.super Ljava/lang/Object;
.source "SlinkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;
    }
.end annotation


# static fields
.field public static final ACTION_CLOUD_AUTHENTICATION_FAILURE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkConstants.ACTION_CLOUD_AUTHENTICATION_FAILURE"

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.APPLICATION_ID"

.field public static final BROADCAST_LOCAL_MEDIA_INSERTED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.LOCAL_MEDIA_INSERTED"

.field public static final BROADCAST_WAKE_DO_LOCAL_SYNC:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.BROADCAST_WAKE_DO_LOCAL_SYNC"

.field public static final CHANGE_OPTION_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.CHANGE_OPTION_EXTRA_KEY"

.field public static final DEVICE_ID_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.DEVICE_ID_EXTRA_KEY"

.field public static final GALLERY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final MUSIC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.music"

.field public static final ONE_APK_PCW_MIN_VERSION:I = 0xc350

.field public static final RECYCLE_BIN_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.RECYCLE_BIN_EXTRA_KEY"

.field public static final SAMSUNGLINK_EXAMPLE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.example"

.field public static final SAMSUNGLINK_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink"

.field public static final SAMSUNG_LINK_BROADCAST_PERMISSION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.permission.BROADCAST_SAMSUNG_LINK"

.field public static final SAMSUNG_LINK_PRIVATE_ACCESS_PERMISSION:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.permission.PRIVATE_ACCESS"

.field public static final SLINK_HOMESYNC_IS_PRIVATE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SLINK_HOMESYNC_IS_PRIVATE"

.field public static final SLINK_UI_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.pcw"

.field public static final SLINK_UI_APP_THEME:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SLINK_UI_APP_THEME"

.field public static TARGET_APK_PACKAGE:Ljava/lang/String; = null

.field public static final VIDEO_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.everglades.video"

.field public static final VIDEO_PLAYER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.videoplayer"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink"

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
