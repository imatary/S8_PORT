.class public Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;
.super Ljava/lang/Object;
.source "SlinkSignInUtils.java"


# static fields
.field public static final ACTION_CONFIRM_SAMSUNG_LINK_USAGE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_CONFIRM_SAMSUNG_LINK_USAGE"

.field public static final ACTION_LOCAL_MEDIA_REVERSE_GEO_SERVICE_STARTER:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.LOCAL_MEDIA_REVERSE_GEO_SERVICE_STARTER"

.field public static final ACTION_SAMSUNG_LINK_PLATFORM_UPGARDE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_SAMSUNG_LINK_PLATFORM_UPGARDE"

.field public static final ACTION_SDK_SIGNIN:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_SDK_SIGNIN"

.field public static final BROADCAST_AUTH_CHANGED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.BROADCAST_AUTH_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BROADCAST_SIGNIN_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.BROADCAST_SIGNIN_STATE_CHANGED"

.field public static final BROADCAST_TIME_DIFF_ERROR:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.BROADCAST_TIME_DIFF_ERROR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SDK_SIGNIN_APP_LABEL:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.EXTRA_SDK_SIGNIN_APP_LABEL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SIGNIN_STATE_SIGNED_IN:Ljava/lang/String; = "SlinkSignInUtils.EXTRA_SIGNIN_STATE_SIGNED_IN"

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field public static final SIGN_IN_RESULT_ACCOUNT_FULL:I = 0x1

.field public static final SLINK_PLATFORM_VERSION_WITHOUT_REVERSE_GEO_LOC_SERVICE:I = 0x756b

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createSamsungLinkUsageConfirmationIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_CONFIRM_SAMSUNG_LINK_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.ConfirmSamsungLinkUsageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createSignInActivityIntent()Landroid/content/Intent;
    .locals 7

    const/4 v1, 0x0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "createSignInActivityIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::createSignInActivityIntent context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_SDK_SIGNIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v6, "com.mfluent.asp.ui.SignInActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.EXTRA_SDK_SIGNIN_APP_LABEL"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getAuthInfo context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetAuthInfo.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getAuthInfo result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getAuthInfo maybe platform is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getInitialSyncDoneDevices()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::Enter getInitialSyncDoneDevices()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getInitialSyncDoneDevices context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetInitialSyncDoneDevices.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getInitialSyncDoneDevices result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getInitialSyncDoneDevices failed with exception."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public getPlatformUpgradeIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_SAMSUNG_LINK_PLATFORM_UPGARDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.UpgradeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getPlatformVersionCode()Ljava/lang/Integer;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getPlatformVersion did not find Samsung Link Platform package: com.samsung.android.sdk.samsunglink"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getPlatformVersionCode null pointer exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method public getSamsungAccountSignInIntent()Landroid/content/Intent;
    .locals 8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getSamsungAccountSignInIntent context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetSamsungAccountSignInIntent.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getSamsungAccountSignInIntent result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getSamsungAccountSignInIntent maybe platform is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetSamsungAccountSignInIntent.RESULT_INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isPlatformEnabled()Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.sdk.samsunglink"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "::isPlatformEnabled(), no slinkplatform, check one-apk slink again"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.pcw"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.pcw"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.ACTION_SDK_SIGNIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "::isPlatformEnabled() pcw version code="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v2, 0x1

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "::isPlatformEnabled() pcw has signin intent"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "com.sec.pcw"

    sput-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return v2

    :catch_0
    move-exception v3

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v4

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isReverseGeoLocationServiceEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getPlatformVersionCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getPlatformVersionCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x756b

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "::isReverseGeoLocationServiceEnabled() returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "::isReverseGeoLocationServiceEnabled() returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 8

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Enter ::isSignedIn()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isSignedIn context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.sec.samsunglink.api.SamsungLinkMediaStore.CallMethods.GetSignInStatus.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isSignedIn result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isSignedIn IllegalArgumentException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "method_result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "::isSignedIn:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUpgradeAvailable()Z
    .locals 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isUpgradeAvailable context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.IsUpgradeAvailable.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isUpgradeAvailable result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::isUpgradeAvailable maybe platform is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public samsungAccountExists()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public signIn()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->signIn(Z)V

    return-void
.end method

.method public signIn(Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SignIn.INTENT_ARG_POST_FAILURE_NOTIFICATION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SignIn.NAME"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::signIn maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startReverseGeocodeService()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::startReverseGeocodeService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::startReverseGeocodeService context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkSignInUtils.LOCAL_MEDIA_REVERSE_GEO_SERVICE_STARTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.sync.LocalMediaReverseGeoLocStarterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
