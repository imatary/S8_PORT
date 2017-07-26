.class public Lcom/naver/glink/android/sdk/login/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/login/LoginHelper$a;,
        Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
    }
.end annotation


# static fields
.field private static a:Lcom/naver/glink/android/sdk/login/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/login/LoginHelper$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/login/LoginHelper$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper;->a:Lcom/naver/glink/android/sdk/login/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a(Z)Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NEO_ID:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/login/LoginHelper;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b()Lcom/naver/glink/android/sdk/login/a$b;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper;->a:Lcom/naver/glink/android/sdk/login/a$b;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method
