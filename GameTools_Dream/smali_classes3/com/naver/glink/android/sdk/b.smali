.class public Lcom/naver/glink/android/sdk/b;
.super Ljava/lang/Object;
.source "Callbacks.java"


# static fields
.field private static a:Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;

.field private static b:Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;

.field private static c:Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;

.field private static d:Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;

.field private static e:Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;

.field private static f:Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;

.field private static g:Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;

.field private static h:Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;

.field private static i:Lcom/naver/glink/android/sdk/Glink$OnVotedListener;

.field private static j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->b:Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->b:Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;->onSdkStarted()V

    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->f:Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->f:Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;->onPostedComment(I)V

    :cond_0
    return-void
.end method

.method public static a(III)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->e:Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->e:Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;->onPostedArticle(III)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->a:Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->d:Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->e:Lcom/naver/glink/android/sdk/Glink$OnPostedArticleListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->f:Lcom/naver/glink/android/sdk/Glink$OnPostedCommentListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->h:Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->b:Lcom/naver/glink/android/sdk/Glink$OnSdkStartedListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->c:Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnVotedListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->i:Lcom/naver/glink/android/sdk/Glink$OnVotedListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->g:Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->a:Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/b;->a:Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/Glink$OnClickAppSchemeBannerListener;->onClickAppSchemeBanner(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->c:Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->c:Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/Glink$OnSdkStoppedListener;->onSdkStopped()V

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->i:Lcom/naver/glink/android/sdk/Glink$OnVotedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->i:Lcom/naver/glink/android/sdk/Glink$OnVotedListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/Glink$OnVotedListener;->onVoted(I)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->h:Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->h:Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/Glink$OnRecordFinishListener;->onRecordFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->d:Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->d:Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/Glink$OnJoinedListener;->onJoined()V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;->onFinishRecord(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->g:Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->g:Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/Glink$OnWidgetScreenshotClickListener;->onScreenshotClick()V

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;->onStartRecord()V

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/b;->j:Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/PlugRecordManager$OnRecordManagerListener;->onErrorRecord()V

    :cond_0
    return-void
.end method
