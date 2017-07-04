.class Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumReloader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/AlbumReloader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Lcom/sec/android/gallery3d/app/AlbumReloader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;-><init>(Lcom/sec/android/gallery3d/app/AlbumReloader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$100(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$MySourceListener;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$100(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->notifyDirty(Z)V

    :cond_0
    return-void
.end method
