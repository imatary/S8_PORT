.class public Lcom/android/keyguard/sec/KeyguardPreviewInflater;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;,
        Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    }
.end annotation


# static fields
.field private static final META_DATA_KEYGUARD_LAYOUT:Ljava/lang/String; = "com.android.keyguard.layout"

.field private static final META_DATA_KEYGUARD_MOBILE_KEYBOARD_LAYOUT:Ljava/lang/String; = "com.android.keyguard.mobilekeyboard.layout"

.field private static final META_DATA_KEYGUARD_THEME_LAYOUT:Ljava/lang/String; = "com.android.keyguard.theme.layout"

.field private static final SAMSUNG_PRELOAD_DIALER_ACTION:Ljava/lang/String; = "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

.field private static final TAG:Ljava/lang/String; = "KeyguardPreviewInflater"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSupportMobileKeyboard:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneResId:I

.field private mSecPreviewLoaded:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    return-void
.end method

.method private getThemePackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    new-instance v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    invoke-direct {v2, v7}, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x10080

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, p1, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_3

    :cond_0
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v1, "resolved == null || resolved.activityInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v1, "appList.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v1, "wouldLaunchResolverActivity(resolved, appList)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_3
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_5

    :cond_4
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v1, "resolved.activityInfo.metaData == null || resolved.activityInfo.metaData.isEmpty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_5
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.keyguard.layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_c

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v0, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    iput v1, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    return-object v2

    :cond_6
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    if-nez v4, :cond_9

    :cond_7
    :goto_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    if-nez v1, :cond_a

    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getThemePackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.keyguard.layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v1, :cond_7

    move v0, v1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_8

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_b
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.keyguard.theme.layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_c
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v1, "layoutId == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private inflateWidgetView(Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/16 v3, 0x1004

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iget v0, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardPreviewInflater"

    const-string/jumbo v3, "Error creating widget view"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x10080

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_0
    return v3
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2
.end method


# virtual methods
.method public checkPhonePreviewUpdated()Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string/jumbo v2, "com.android.contacts"

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "KeyguardPreviewInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentResId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mPhoneResId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "KeyguardPreviewInflater"

    const-string/jumbo v2, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "KeyguardPreviewInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent.getAction()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflateWidgetView(Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v2, "info == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.DIAL"

    if-ne v0, v3, :cond_0

    iget-object v0, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string/jumbo v3, "com.android.contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v3, "switching default dialer action"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iget v3, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    iput v3, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    iput v0, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    move-object v0, v2

    :cond_4
    move-object v2, v0

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string/jumbo v3, "com.android.contacts"

    invoke-interface {v0, v3}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_6

    move-object v0, v1

    :goto_2
    :try_start_1
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_3
    const-string/jumbo v3, "KeyguardPreviewInflater"

    const-string/jumbo v4, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :try_start_2
    new-instance v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v3, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    iget v4, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    iput v4, v0, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v2, "info == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_8
    const-string/jumbo v0, "KeyguardPreviewInflater"

    const-string/jumbo v2, "v == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method
