.class Lcom/sec/android/gallery3d/data/MtpDeviceSet$1;
.super Ljava/lang/Object;
.source "MtpDeviceSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpDeviceSet;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDeviceSet$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->notifyContentChanged()V

    return-void
.end method
