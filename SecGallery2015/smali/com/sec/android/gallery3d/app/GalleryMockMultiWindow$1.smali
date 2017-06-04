.class Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow$1;
.super Ljava/lang/Object;
.source "GalleryMockMultiWindow.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMockMultiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRectInfo()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getZoneInfo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMinimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScaleWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V
    .locals 0

    return-void
.end method
