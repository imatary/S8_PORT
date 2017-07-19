.class final Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;
.super Landroid/util/SparseArray;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/16 v0, 0x3e

    const v1, 0xb71b00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    const/16 v0, 0x22

    const v1, 0x895440

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    const v1, 0x2dc6c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    return-void
.end method
