.class public abstract Lcom/samsung/android/common/diagmon/ForceCloseCatcher;
.super Ljava/lang/Object;
.source "ForceCloseCatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private handler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private orignalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;-><init>(Lcom/samsung/android/common/diagmon/ForceCloseCatcher;)V

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->orignalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/common/diagmon/ForceCloseCatcher;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->orignalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method
