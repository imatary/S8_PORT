.class public final Lcom/naver/glink/android/sdk/a/a;
.super Ljava/lang/Object;
.source "BusProvider.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/a/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/squareup/otto/Bus;

    invoke-direct {v0}, Lcom/squareup/otto/Bus;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/a/a;->b:Lcom/squareup/otto/Bus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/a/a;->b:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/naver/glink/android/sdk/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/a/a;->b:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/naver/glink/android/sdk/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/a/a;->b:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/naver/glink/android/sdk/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
