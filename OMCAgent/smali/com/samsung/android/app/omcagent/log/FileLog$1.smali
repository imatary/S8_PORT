.class final Lcom/samsung/android/app/omcagent/log/FileLog$1;
.super Lcom/samsung/android/common/log/Logger$Impl;
.source "FileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/log/FileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/log/Logger$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public println(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/common/log/LoggerCollection;->println(ILjava/lang/String;)V

    return-void
.end method
