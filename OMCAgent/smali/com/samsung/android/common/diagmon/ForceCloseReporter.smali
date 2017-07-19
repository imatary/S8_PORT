.class public Lcom/samsung/android/common/diagmon/ForceCloseReporter;
.super Lcom/samsung/android/common/diagmon/ForceCloseCatcher;
.source "ForceCloseReporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/common/diagmon/DiagMon;->sendException(Ljava/lang/Throwable;)V

    return-void
.end method
