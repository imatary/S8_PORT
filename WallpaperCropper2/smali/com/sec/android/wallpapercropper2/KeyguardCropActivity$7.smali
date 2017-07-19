.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

.field final synthetic val$ios:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;->val$ios:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;->val$ios:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;->interrupt()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;->val$ios:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method
