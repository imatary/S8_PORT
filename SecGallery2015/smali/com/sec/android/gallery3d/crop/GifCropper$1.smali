.class Lcom/sec/android/gallery3d/crop/GifCropper$1;
.super Ljava/lang/Object;
.source "GifCropper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/crop/GifCropper;->saveCropedAgifToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileInputStream;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/crop/GifCropper;

.field final synthetic val$ios:Lcom/sec/android/gallery3d/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/crop/GifCropper;Lcom/sec/android/gallery3d/util/InterruptableOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/crop/GifCropper$1;->this$0:Lcom/sec/android/gallery3d/crop/GifCropper;

    iput-object p2, p0, Lcom/sec/android/gallery3d/crop/GifCropper$1;->val$ios:Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper$1;->val$ios:Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;->interrupt()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/crop/GifCropper$1;->val$ios:Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method
