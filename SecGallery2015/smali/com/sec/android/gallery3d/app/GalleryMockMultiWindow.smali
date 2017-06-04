.class public Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;
.super Ljava/lang/Object;
.source "GalleryMockMultiWindow.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;


# instance fields
.field private final mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    return-void
.end method


# virtual methods
.method public getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;->mMultiWindowActivity:Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V
    .locals 0

    return-void
.end method

.method public updateMultiWindowSize()V
    .locals 0

    return-void
.end method
