.class public interface abstract Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker$ProgressCheckerListener;
.super Ljava/lang/Object;
.source "FileCopyProgressChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/FileCopyProgressChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCheckerListener"
.end annotation


# virtual methods
.method public abstract onProgressChanged(Ljava/lang/String;III)V
.end method

.method public abstract onProgressCompleted()V
.end method
