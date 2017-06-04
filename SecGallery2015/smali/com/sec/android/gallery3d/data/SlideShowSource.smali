.class public Lcom/sec/android/gallery3d/data/SlideShowSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "SlideShowSource.java"


# static fields
.field public static final PATH_PREFIX:Ljava/lang/String; = "slideshow"

.field private static final SLIDESHOW_NO_SELECTION:I = 0x0

.field private static final SLIDESHOW_WITH_SELECTION:I = 0x1


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "slideshow"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slideshow/*/noselection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/slideshow/media/item/selection/"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v4, Lcom/sec/android/gallery3d/data/SlideShowMediaSet;

    aget-object v5, v2, v5

    invoke-direct {v4, p1, v5}, Lcom/sec/android/gallery3d/data/SlideShowMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_1
    new-instance v4, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SlideShowSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, p1, v5}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
