.class public Lcom/amap/api/services/a/bg;
.super Ljava/lang/Object;
.source "BasicLogHandler.java"


# static fields
.field protected static a:Lcom/amap/api/services/a/bg;


# instance fields
.field protected b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/amap/api/services/a/bg;->a:Lcom/amap/api/services/a/bg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/services/a/bg;->a:Lcom/amap/api/services/a/bg;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
