.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "GalleryNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/os/AsyncTask;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    return-object v0
.end method
