.class public Lcom/naver/glink/android/sdk/samsung/SPlug;
.super Ljava/lang/Object;
.source "SPlug.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;
    }
.end annotation


# static fields
.field private static gamePackageName:Ljava/lang/String;

.field private static onLifeCycleListener:Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static createLifeCycleListener(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->onLifeCycleListener:Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/samsung/SPlug$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/samsung/SPlug$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->onLifeCycleListener:Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;

    :cond_0
    return-void
.end method

.method public static getOnLifeCycleListener()Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->onLifeCycleListener:Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "plug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "plug sinit id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->gamePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->gamePackageName:Ljava/lang/String;

    invoke-static {v0, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "plug"

    const-string/jumbo v1, "plug sinit gamePackageName same. don\'t init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/naver/glink/android/sdk/StartFrom;->SAMSUNG_GAME_TOOLS:Lcom/naver/glink/android/sdk/StartFrom;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/StartFrom;)V

    new-instance v0, Lcom/naver/glink/android/sdk/samsung/c;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/samsung/c;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V

    new-instance v0, Lcom/naver/glink/android/sdk/configure/d;

    const-string/jumbo v1, "#00c73c"

    const-string/jumbo v2, "#000000"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/configure/d;)V

    invoke-static {p4}, Lcom/naver/glink/android/sdk/c;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/samsung/SPlug;->createLifeCycleListener(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string/jumbo v0, "plug"

    const-string/jumbo v1, "plug sinit doInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p5, Lcom/naver/glink/android/sdk/samsung/SPlug;->gamePackageName:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isPlugCollapsed()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->c()Z

    move-result v0

    return v0
.end method

.method public static isShowGlink(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v0

    return v0
.end method

.method public static setOnClickAppSchemeBannerListener(Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;)V

    return-void
.end method

.method public static setOnJoinedListener(Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;)V

    return-void
.end method

.method public static setOnPostedArticleListener(Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;)V

    return-void
.end method

.method public static setOnPostedCommentListener(Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;)V

    return-void
.end method

.method public static setOnRecordFinishListener(Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;)V

    return-void
.end method

.method public static setOnSdkStartedListener(Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;)V

    return-void
.end method

.method public static setOnSdkStoppedListener(Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;)V

    return-void
.end method

.method public static setOnVotedListener(Lcom/naver/glink/android/sdk/Glink$OnVotedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnVotedListener;)V

    return-void
.end method

.method public static setOnWidgetScreenshotClickListener(Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/b;->a(Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;)V

    return-void
.end method

.method public static setWindowParam(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static startHome(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/samsung/SPlug;->createLifeCycleListener(Landroid/content/Context;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public static startImageWrite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, v1, p1}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startVideoWrite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, v1, p1}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "plug"

    const-string/jumbo v1, "plug stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/samsung/SPlug;->gamePackageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    return-void
.end method
