.class public Lcom/samsung/android/sdk/samsunglink/SlinkLaunchUtils;
.super Ljava/lang/Object;
.source "SlinkLaunchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkLaunchUtils$LaunchToContentTypes;
    }
.end annotation


# static fields
.field public static final BROADCAST_SAMSUNG_LINK_EXITED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.BROADCAST_SAMSUNG_LINK_EXITED"

.field public static final BROADCAST_SAMSUNG_LINK_STARTED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.BROADCAST_SAMSUNG_LINK_STARTED"

.field public static final EXTRA_LAUNCH_TO_CONTENT_TYPE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.EXTRA_LAUNCH_TO_CONTENT_TYPE"

.field public static final EXTRA_LAUNCH_TO_DEVICE_ID:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.EXTRA_LAUNCH_TO_DEVICE_ID"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkLaunchUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkLaunchUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLaunchToDeviceIntent(JJ)Landroid/content/Intent;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkLaunchUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "::createLaunchToDeviceIntent() - deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.mfluent.asp.ui.MobileChargesNotificationActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.pcw"

    const-string/jumbo v3, "com.mfluent.asp.ui.MobileChargesNotificationActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.EXTRA_LAUNCH_TO_DEVICE_ID"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkLaunchUtils.EXTRA_LAUNCH_TO_CONTENT_TYPE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method
