.class public Lcom/naver/glink/android/sdk/Glink;
.super Ljava/lang/Object;
.source "Glink.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/Glink$OnVotedListener;,
        Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;,
        Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;,
        Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;,
        Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;,
        Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;,
        Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;,
        Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;,
        Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;,
        Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAndroidVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getChannelCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/naver/glink/android/sdk/StartFrom;->GAME:Lcom/naver/glink/android/sdk/StartFrom;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/StartFrom;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/a$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/tabs/a$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V

    return-void
.end method

.method public static initGlobal(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcom/naver/glink/android/sdk/StartFrom;->GAME:Lcom/naver/glink/android/sdk/StartFrom;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/StartFrom;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/tabs/a$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/tabs/a$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V

    return-void
.end method

.method public static isShowGlink(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v0

    return v0
.end method

.method public static isSupportAndroidVersion()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setChannelCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Glink;->isShowGlink(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/configure/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
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

.method public static setThemeColor(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/configure/d;

    const-string/jumbo v1, "#44484e"

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/configure/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/configure/d;)V

    return-void
.end method

.method public static setThemeColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/configure/d;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/configure/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Lcom/naver/glink/android/sdk/configure/d;)V

    return-void
.end method

.method public static setTransparentable(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setUseScreenshot(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/a/l;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setUseVideoRecord(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/a/l;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setWidgetStartPosition(Landroid/content/Context;ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static showWidgetWhenUnloadSdk(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/a/l;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static startAllImages(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static startAllVideos(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static startArticle(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static startEvent(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public static startHome(Landroid/content/Context;)V
    .locals 1

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

.method public static startMenu(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public static startMenu(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static startNotice(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public static startProfile(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    return-void
.end method

.method public static startVideoWrite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, v1, p1}, Lcom/naver/glink/android/sdk/c;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWidget(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static startWrite(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v0, v1, v1}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static stopWidget(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/c;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static syncGameUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->syncGameUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
