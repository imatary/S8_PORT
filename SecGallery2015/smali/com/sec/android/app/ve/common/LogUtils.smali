.class public Lcom/sec/android/app/ve/common/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/common/LogUtils;->DEBUG:Z

    return-void
.end method

.method public static criticalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/ve/common/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VideoEditorAppTab"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/ve/common/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
