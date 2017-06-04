.class Lcom/sec/android/gallery3d/data/SuggestionAlbumSet$1;
.super Ljava/lang/Object;
.source "SuggestionAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->exitCurrentState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;

    # getter for: Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;->access$000(Lcom/sec/android/gallery3d/data/SuggestionAlbumSet;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method
