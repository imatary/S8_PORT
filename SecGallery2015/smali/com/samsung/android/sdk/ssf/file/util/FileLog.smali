.class public Lcom/samsung/android/sdk/ssf/file/util/FileLog;
.super Ljava/lang/Object;
.source "FileLog.java"


# static fields
.field private static SUB_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "FileLog"

    sput-object v0, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->SUB_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
