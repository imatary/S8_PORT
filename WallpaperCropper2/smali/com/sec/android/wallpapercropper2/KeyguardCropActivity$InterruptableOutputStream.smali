.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;
.super Ljava/io/OutputStream;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterruptableOutputStream"
.end annotation


# static fields
.field private static final MAX_WRITE_BYTES:I = 0x1000


# instance fields
.field private volatile mIsInterrupted:Z

.field private mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_0
    sub-int v1, v0, p2

    const/16 v2, 0x1000

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method
