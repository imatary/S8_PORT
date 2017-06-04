.class Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;
.super Ljava/lang/Object;
.source "ForceCloseCatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/ForceCloseCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/common/diagmon/ForceCloseCatcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/common/diagmon/ForceCloseCatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;->this$0:Lcom/samsung/android/common/diagmon/ForceCloseCatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;->this$0:Lcom/samsung/android/common/diagmon/ForceCloseCatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/ForceCloseCatcher$1;->this$0:Lcom/samsung/android/common/diagmon/ForceCloseCatcher;

    # getter for: Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->orignalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/samsung/android/common/diagmon/ForceCloseCatcher;->access$000(Lcom/samsung/android/common/diagmon/ForceCloseCatcher;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
