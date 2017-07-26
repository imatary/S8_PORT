.class Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;
.super Ljava/lang/Object;
.source "NeoIdInAppBrowserActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
