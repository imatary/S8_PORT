.class Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "GalleryAppImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryUncaughtExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryAppImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryAppImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;->this$0:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/GalleryAppImpl;Lcom/sec/android/gallery3d/app/GalleryAppImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;-><init>(Lcom/sec/android/gallery3d/app/GalleryAppImpl;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;->this$0:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/sec/android/gallery3d/app/GalleryAppImpl;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
